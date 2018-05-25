//
//  WorkScreenPresenter.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import UIKit

class WorkScreenPresenter {
    typealias View = WorkScreenViewController
    // MARK: viper
    weak var view: WorkScreenViewInput!
    var interactor: WorkScreenInteractorInput!
    var router: WorkScreenRouterInput!
}

// MARK: - WorkScreenModuleInput
extension WorkScreenPresenter: WorkScreenModuleInput {
    func configue(with data: Any?) {
        
    }
}

// MARK: - WorkScreenInteractorOutput
extension WorkScreenPresenter: WorkScreenInteractorOutput {
    
}

// MARK: - WorkScreenRouterOutput
extension WorkScreenPresenter: WorkScreenRouterOutput {
    
}

// MARK: - WorkScreenViewOutput
extension WorkScreenPresenter: WorkScreenViewOutput {
    func didTriggerViewReadyEvent() {
        view.setupInitialState()
    }
    
    func closeButtonTapped() {
        router.close()
    }
}
