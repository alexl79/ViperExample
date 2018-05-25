//
//  WorkScreenAssemblyContainer.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class WorkScreenAssemblyContainer: Assembly {
    func assemble(container: Container) {
        container.register(WorkScreenInteractor.self) { (r, presenter: WorkScreenPresenter) in
            let interactor = WorkScreenInteractor()
            interactor.output = presenter
            return interactor
        }
        
        container.register(WorkScreenRouter.self) { (r, presenter: WorkScreenPresenter, viewController: WorkScreenViewController) in
            let router = WorkScreenRouter()
            router.output = presenter
            router.transitionHandler = viewController
            return router
        }
        
        container.register(WorkScreenPresenter.self) { (r, viewController: WorkScreenViewController) in
            let presenter = WorkScreenPresenter()
            presenter.interactor = r.resolve(WorkScreenInteractor.self, argument: presenter)
            presenter.router = r.resolve(WorkScreenRouter.self, arguments: presenter, viewController)
            presenter.view = viewController
            return presenter
        }

        container.storyboardInitCompleted(WorkScreenViewController.self) { (r, viewController: WorkScreenViewController) in
            let presenter = r.resolve(WorkScreenPresenter.self, argument: viewController)
            viewController.output = presenter
        }
    }
}
