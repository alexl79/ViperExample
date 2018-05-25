//
//  MainScreenAssemblyContainer.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class MainScreenAssemblyContainer: Assembly {
    func assemble(container: Container) {
        container.register(MainScreenInteractor.self) { (r, presenter: MainScreenPresenter) in
            let interactor = MainScreenInteractor()
            interactor.output = presenter
            return interactor
        }
        
        container.register(MainScreenRouter.self) { (r, presenter: MainScreenPresenter, viewController: MainScreenViewController) in
            let router = MainScreenRouter()
            router.output = presenter
            router.transitionHandler = viewController
            return router
        }
        
        container.register(MainScreenPresenter.self) { (r, viewController: MainScreenViewController) in
            let presenter = MainScreenPresenter()
            presenter.interactor = r.resolve(MainScreenInteractor.self, argument: presenter)
            presenter.router = r.resolve(MainScreenRouter.self, arguments: presenter, viewController)
            presenter.view = viewController
            return presenter
        }

        container.storyboardInitCompleted(MainScreenViewController.self) { (r, viewController: MainScreenViewController) in
            let presenter = r.resolve(MainScreenPresenter.self, argument: viewController)
            viewController.output = presenter
        }
    }
}
