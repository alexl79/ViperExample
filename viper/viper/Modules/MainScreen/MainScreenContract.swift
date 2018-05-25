//
//  MainScreenContract.swift
//  Viper
//
//  Created by Alexander Lobanov on 23.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation

// MARK: presenter
protocol MainScreenModuleInput: class {
    func configue(with data: Any?)
}

// MARK: interactor
protocol MainScreenInteractorInput: class {
    
}

protocol MainScreenInteractorOutput: class {
    
}

// MARK: router
protocol MainScreenRouterInput: class {
    func launchWorkScreen(data: String)
}

protocol MainScreenRouterOutput: class {
    
}

// MARK: view
protocol MainScreenViewInput: class {
    func setupInitialState()
}

protocol MainScreenViewOutput: class {
    func didTriggerViewReadyEvent()
    func openButtonTapped()
}
