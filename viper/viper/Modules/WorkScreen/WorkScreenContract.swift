//
//  WorkScreenContract.swift
//  Viper
//
//  Created by Alexander Lobanov on 23.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation

// MARK: presenter
protocol WorkScreenModuleInput: class {
    func configue(with data: Any?)
}

// MARK: interactor
protocol WorkScreenInteractorInput: class {
    
}

protocol WorkScreenInteractorOutput: class {
    
}

// MARK: router
protocol WorkScreenRouterInput: class {
    func close()
}

protocol WorkScreenRouterOutput: class {
    
}

// MARK: view
protocol WorkScreenViewInput: class {
    func setupInitialState()
}

protocol WorkScreenViewOutput: class {
    func didTriggerViewReadyEvent()
    func closeButtonTapped()
}
