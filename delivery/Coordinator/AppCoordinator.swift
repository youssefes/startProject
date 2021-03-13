//
//  AppCoordinator.swift
//  Opportunities
//
//  Created by youssef on 12/9/20.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var mainNavigator : MainNavigator {get}
    var navigationController : UINavigationController? {get}
    var isLogIn : Bool {get set}
    var firstTimeOpen : Bool {get set}
    func dismiss()
}
class AppCoordinator : Coordinator {
    
    
    var firstTimeOpen: Bool = true {
        didSet{
            start()
        }
    }
    
    var isLogIn : Bool = false {
        didSet{
            start()
        }
    }
    lazy var mainNavigator : MainNavigator = {
          return .init(coordintor: self)
    }()
    
    let window : UIWindow
    init(Window : UIWindow = UIWindow()) {
        self.window = Window
    }
    
    
    
    func dismiss() {
        self.navigationController?.popViewController(animated: true)
    }
    var navigationController : UINavigationController? {
        
        return UINavigationController(rootViewController: rootViewController)
        
    }
    
    func start()  {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    func reset() {
          let rootController: UIWindow = ((UIApplication.shared.delegate?.window)!)!
          rootController.rootViewController = navigationController
      }
    
    var rootViewController : UIViewController {
        if firstTimeOpen{
            return self.mainNavigator.viewController(for: .register)
        }else{
            return self.mainNavigator.viewController(for: .register)
        }
        
        
    }
}
