//
//  WorkScreenViewController.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.04.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import UIKit

class WorkScreenViewController: BaseViewController {
    // MARK: viper
    var output: WorkScreenViewOutput!
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.didTriggerViewReadyEvent()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func onCloseButtonTapped(_ sender: UIButton) {
        output.closeButtonTapped()
    }
}

// MARK: - WorkScreenViewInput
extension WorkScreenViewController: WorkScreenViewInput {
    func setupInitialState() {
        
    }
}
