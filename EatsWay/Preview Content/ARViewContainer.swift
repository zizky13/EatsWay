import Foundation
import SwiftUI
import RealityKit
import ARKit
import CoreLocation

struct ARViewContainer: UIViewRepresentable {
    @Binding var distanceText: String
    @Binding var directionAngle: Double

    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)

        let config = ARWorldTrackingConfiguration()
        config.worldAlignment = .gravityAndHeading
        arView.session.run(config, options: [.resetTracking, .removeExistingAnchors])
        arView.session.delegate = context.coordinator

        context.coordinator.arView = arView
        context.coordinator.placeArrow()

        // 👉 Hapus tombol Back UIKit di sini

        return arView
    }


    func updateUIView(_ uiView: ARView, context: Context) {
        context.coordinator.updateDirectionAngle(directionAngle)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(directionAngle: $directionAngle)
    }

    class Coordinator: NSObject, ARSessionDelegate {
        weak var arView: ARView?
        var arrowEntity: ModelEntity?
        var directionAngle: Double = 0.0

        @Binding var directionAngleBinding: Double

        init(directionAngle: Binding<Double>) {
            _directionAngleBinding = directionAngle
        }

        func updateDirectionAngle(_ newAngle: Double) {
            directionAngle = newAngle
        }

        func placeArrow() {
                  guard let arView = arView else { return }

                  let arrowMaterial = SimpleMaterial(color: UIColor(red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0), isMetallic: false)
                  let shaftLength: Float = 0.3
                  let coneHeight: Float = 0.1
                  let coneRadius: Float = 0.05

                  let shaftMesh = MeshResource.generateBox(size: [0.02, 0.02, shaftLength])
                  let shaft = ModelEntity(mesh: shaftMesh, materials: [arrowMaterial])
                  shaft.position = [0, 0, -shaftLength / 2]

                  let coneMesh = MeshResource.generateCone(height: coneHeight, radius: coneRadius)
                  let head = ModelEntity(mesh: coneMesh, materials: [arrowMaterial])
                  head.position = [0, 0, -shaftLength - coneHeight / 2]
                  head.transform.rotation = simd_quatf(angle: -.pi / 2, axis: [1, 0, 0])

                  let arrow = ModelEntity()
                  arrow.addChild(shaft)
                  arrow.addChild(head)
                  arrowEntity = arrow

                  let anchor = AnchorEntity()
                  anchor.addChild(arrow)

                  let light = DirectionalLight()
                  light.light.intensity = 10000
                  light.light.color = .white
                  light.transform.rotation = simd_quatf(angle: -.pi / 4, axis: [1, 0, 0])

                  let lightEntity = Entity()
                  lightEntity.addChild(light)
                  anchor.addChild(lightEntity)

                  arView.scene.addAnchor(anchor)
              }

        func session(_ session: ARSession, didUpdate frame: ARFrame) {
            guard let arrow = arrowEntity, let arView = arView else { return }

            let cameraTransform = frame.camera.transform
            let cameraPosition = SIMD3<Float>(cameraTransform.columns.3.x,
                                              cameraTransform.columns.3.y,
                                              cameraTransform.columns.3.z)

            let forwardVector = normalize(-SIMD3(cameraTransform.columns.2.x,
                                                 cameraTransform.columns.2.y,
                                                 cameraTransform.columns.2.z))

            let frontPosition = cameraPosition + forwardVector * 1.0
            arrow.position = frontPosition

            let angleInRadians = Float(directionAngle.degreesToRadians)
            let baseRotation = simd_quatf(angle: -angleInRadians, axis: [0, 1, 0])
            let upwardRotation = simd_quatf(angle: -.pi / 4, axis: [1, 0, 0])
            arrow.orientation = simd_mul(upwardRotation, baseRotation)

        }
    }
}
