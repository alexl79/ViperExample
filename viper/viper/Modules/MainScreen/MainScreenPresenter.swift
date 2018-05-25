//
//  MainScreenPresenter.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import UIKit

class MainScreenPresenter {
    typealias View = MainScreenViewController
    // MARK: viper
    weak var view: MainScreenViewInput!
    var interactor: MainScreenInteractorInput!
    var router: MainScreenRouterInput!
}

// MARK: - MainScreenModuleInput
extension MainScreenPresenter: MainScreenModuleInput {
    func configue(with data: Any?) {
        
    }
}

// MARK: - MainScreenInteractorOutput
extension MainScreenPresenter: MainScreenInteractorOutput {
    
}

// MARK: - MainScreenRouterOutput
extension MainScreenPresenter: MainScreenRouterOutput {
    
}

// MARK: - MainScreenViewOutput
extension MainScreenPresenter: MainScreenViewOutput {
    func didTriggerViewReadyEvent() {
        view.setupInitialState()
    }
    
    func openButtonTapped() {
        router.launchWorkScreen()
    }
}
