//
//  MainScreenViewController.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.04.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import UIKit

class MainScreenViewController: BaseViewController {
    // MARK: viper
    var output: MainScreenViewOutput!
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.didTriggerViewReadyEvent()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func onOpenButtonTapped(_ sender: UIButton) {
        output.openButtonTapped()
    }
}

// MARK: - MainScreenViewInput
extension MainScreenViewController: MainScreenViewInput {
    func setupInitialState() {
        
    }
}
