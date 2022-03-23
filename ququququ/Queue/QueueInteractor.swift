//
//  QueueInteractor.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 2/3/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

typealias QueueInteractable = QueueBusinessLogic

protocol QueueBusinessLogic {
    func doPostRequest()
//  func doRequest(_ request: QueueModel.Request)
}
//
//protocol QueueDataStore {
//  var dataSource: QueueModel.DataSource { get }
//}

 class QueueInteractor {
  
  
  private var presenter: QueuePresentationLogic
  
  init(viewController: QueueDisplayLogic?) {
   // self.dataSource = dataSource
    self.presenter = QueuePresenter(viewController: viewController)
  }
}


// MARK: - QueueBusinessLogic
extension QueueInteractor{
    func doPostRequest(time: String,branch: String, description: String,name: String, completion: @escaping([String: Any]?, Error?)-> Void ){
        
        
        let url = URL(string: "http://localhost:8882/queue/create")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        //request.setValue("application/json", forHTTPHeaderField: "content-type")
        
        let task = URLSession.shared.dataTask(with: request){
            data,response,error in
            if let error = error{
                print("error")}
            else{
                let jsonResponse = try? JSONSerialization.jsonObject(with: data!, options: [])
                
            }
        }.resume()
    }
    
//
//  func doRequest(_ request: QueueModel.Request) {
//    DispatchQueue.global(qos: .userInitiated).async {
//
//      switch request {
//
//      case .doSomething(let item):
//        self.doSomething(item)
//      }
//    }
//  }
}


// MARK: - Private Zone
//private extension QueueInteractor {
//
//  func doSomething(_ item: Int) {
//
//    //construct the Service right before using it
//    //let serviceX = factory.makeXService()
//
//    // get new data async or sync
//    //let newData = serviceX.getNewData()
//
//    presenter.presentResponse(.doSomething(newItem: item + 1, isItem: true))
//  }
//}
