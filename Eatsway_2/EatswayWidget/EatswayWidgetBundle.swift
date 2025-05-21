//
//  EatswayWidgetBundle.swift
//  EatswayWidget
//
//  Created by Callista Althea Hartanto on 15/05/25.
//

import WidgetKit
import SwiftUI

@main
struct EatswayWidgetBundle: WidgetBundle {
    var body: some Widget {
        EatswayWidget()
        EatswayWidgetControl()
        EatswayWidgetLiveActivity()
    }
}
