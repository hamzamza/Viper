//
//  Presenter.swift
//  VIPER
//
//  Created by HAMZA DOUAIJ on 7/8/24.
//

import Foundation

// object
// protocol
// ref to interactor , router , view

protocol AnyPresenter {
    var router : AnyRouter? {get set }
    var interactor : AnyInteractor? {get set }
    var view : AnyView? {get set }
    func InteractorDidFetchUsers(with result : Result<[User], Error> )
}

class UserPresenter : AnyPresenter {
    var router: AnyRouter?
    
    var interactor: AnyInteractor?
    
    var view: AnyView?
    
    func InteractorDidFetchUsers(with result: Result<[User], Error>) {
    
    }
     
    
}
