//
//  MainNavigator.swift
//  Opportunities
//
//  Created by youssef on 12/9/20.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import UIKit

class MainNavigator : Navigator {
    
    var coordinator: Coordinator
    
    enum Destination {
        case login
        case register
    }
    required init(coordintor: Coordinator) {
        self.coordinator = coordintor
    }
    
    func viewController(for destination: MainNavigator.Destination) -> UIViewController {
        
        switch destination {
        case .login:
            let LoginModel = loginViewModel()
            let view = loginViewController(ViewModel: LoginModel, coordinator: coordinator)
            return view
        case .register:
            let registerModel = registerViewModel()
            let view = RegisterViewController(ViewModel: registerModel, coordinator: coordinator)
            return view
        }
    }
    
}
