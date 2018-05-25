//
//  WorkScreenRouter.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import LightRoute

class WorkScreenRouter {
    // MARK: viper
    weak var output: WorkScreenRouterOutput!
    weak var transitionHandler: TransitionHandler!
}

extension WorkScreenRouter: WorkScreenRouterInput {
    func close() {
        try? transitionHandler.closeCurrentModule().perform()
    }
}
