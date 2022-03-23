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
    func doPostRequest(date: Date, time: Date, branch: String, name: String, description: String)
}

class QueueInteractor: QueueBusinessLogic {
    
    
    private var presenter: QueuePresentationLogic
    
    init(viewController: QueueDisplayLogic?) {
        // self.dataSource = dataSource
        self.presenter = QueuePresenter(viewController: viewController)
    }
    
    func doPostRequest(date: Date, time: Date, branch: String, name: String, description: String) {
        let url = URL(string: "http://localhost:8882/queue/create")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = generateQueueRequest(date: date, time: time, branch: branch, name: name, description: description)
        request.setValue("application/json", forHTTPHeaderField: "content-type")
        URLSession.shared.dataTask(with: request){
            data,response,error in
            if let error = error{
                print("error")
            }
            else{
                let jsonResponse = try? JSONSerialization.jsonObject(with: data!, options: [])
                self.presenter.dismissViewController()
            }
        }.resume()
    }
    
    func generateQueueRequest(date: Date, time: Date, branch: String, name: String, description: String) -> Data? {
        let queue = QueueModel.Booking(date: date, time: time, branch: branch, description: description, name: name)
        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(queue)
            return jsonData
        } catch {
            print("ERROR")
            return nil
        }
    }
}

