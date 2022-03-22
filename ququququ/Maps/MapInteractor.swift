//
//  MapInteractor.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 17/3/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation


protocol MapBusinessLogic {
    
    func doRequest(_ request: MapModel.Request)
}

protocol MapDataStore {
    var dataSource: MapModel.DataSource { get }
}

class MapInteractor {
    
    
    private var presenter: MapPresentationLogic
    
    init(viewController: MapDisplayLogic?) {
        self.presenter = MapPresenter(viewController: viewController)
        
        
        
    }
}


// MARK: - MapBusinessLogic
extension MapInteractor: MapBusinessLogic {
    
    func doRequest(_ request: MapModel.Request) {
        DispatchQueue.global(qos: .userInitiated).async {
            
            switch request {
                
            case .doSomething(let item):
                self.doSomething(item)
            }
        }
    }
}


// MARK: - Private Zone
private extension MapInteractor {
    
    func doSomething(_ item: Int) {
        
        //construct the Service right before using it
        //let serviceX = factory.makeXService()
        
        // get new data async or sync
        //let newData = serviceX.getNewData()
        
        presenter.presentResponse(.doSomething(newItem: item + 1, isItem: true))
    }
}








