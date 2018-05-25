//
//  ApplicationAssembly.swift
//  Viper
//
//  Created by Alexander Lobanov on 16.05.18.
//  Copyright © 2018 iosnik. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class ApplicationAssembly {
    class var assembler: Assembler {
        return Assembler([MainScreenAssemblyContainer(),
                          WorkScreenAssemblyContainer()])
    }
}

extension SwinjectStoryboard {
    @objc class func setup() {
        defaultContainer = ApplicationAssembly.assembler.resolver as! Container
    }
}
