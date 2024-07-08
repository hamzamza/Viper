//
//  Interactor.swift
//  VIPER
//
//  Created by HAMZA DOUAIJ on 7/8/24.
//

import Foundation

// object
// protocol
// ref to presenter
// api call and stuf : api endpoint 
protocol AnyInteractor {
    var presetneer : AnyPresenter? {get set }
    func getUsers()
}

class UserInteractor : AnyInteractor{
    var presetneer: AnyPresenter?
    
    func getUsers() {
         
    }
    
    
}
