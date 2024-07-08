//
//  Router.swift
//  VIPER
//
//  Created by HAMZA DOUAIJ on 7/8/24.
//

import Foundation
import UIKit
// object
// entry point
// it represent the interacne of our model
// interace viewcontroller

protocol AnyRouter {
    var entry : EntryPoint? { get }
    static func start() -> AnyRouter
}
class UserRouter : AnyRouter {
  
    var entry: EntryPoint?
    
    static func start()-> AnyRouter {
        let router = UserRouter()
         
            var view : AnyView = UserViewController()
            var presenter : AnyPresenter = UserPresenter()
            let interactor : AnyInteractor = UserInteractor()
            view.presenter = presenter
            presenter.router = router
            presenter.view = view
            presenter.interactor = interactor
            router.entry  = view as? EntryPoint
            
        return router  
    }
}


typealias EntryPoint = AnyView & UIViewController
