//
//  RootCordinator.swift
//  mvvm-c-coordinator
//
//  Created by DSDEVMAC2 on 5/12/24.
//

import Foundation
import UIKit

protocol Coordinator : AnyObject {
    
    var navigationController : UINavigationController {get set}
    func start(animated : Bool)
    
    func popViewControler(animated : Bool, useCustomAnimation : Bool, transitionType : CATransitionType)
}

//extension Coordinator {
//    func popViewControler(animated : Bool, useCustomAnimation : Bool, transitionType : CATransitionType){
//        navigationController.popViewController(animated: animated)
//    }
//    
//    func popToViewController(childClass : AnyClass, animated : Bool = true){
//        navigationController.popToViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
//    }
//}
