//
//  QueueModel.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 2/3/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates(https://github.com/Andrei-Popilian/VIP_Design_Xcode_Template)
//  so you can apply clean architecture to your iOS and MacOS projects,
//  see more http://clean-swift.com
//


import Foundation

enum QueueModel {
    
    struct Booking : Codable{
        var date: Date?
        var time: Date?
        var branch: String?
        var description: String?
        var name: String?
        
    }
    
    
    
    enum Response {
        case doSomething(newItem: Int, isItem: Bool)
    }
    
    enum ViewModel {
        case doSomething(viewModelData: NSObject)
    }
    
    enum Route {
        case dismissQueueScene
        case xScene(xData: Int)
    }
    
    struct DataSource {
        //var test: Int
    }
}
