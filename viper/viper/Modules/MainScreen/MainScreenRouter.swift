//
//  MainScreenRouter.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import LightRoute

class MainScreenRouter {
    // MARK: viper
    weak var output: MainScreenRouterOutput!
    weak var transitionHandler: TransitionHandler!
}

extension MainScreenRouter: MainScreenRouterInput {
    func launchWorkScreen(data: String) {
        try? transitionHandler.forSegue(identifier: "WorkScreenSegueID", to: WorkScreenModuleInput.self).then({ (moduleInput) in
            moduleInput.configue(with: data)
        })
    }
}
