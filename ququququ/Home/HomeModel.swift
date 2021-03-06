//
//  HomeModel.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 21/2/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates(https://github.com/Andrei-Popilian/VIP_Design_Xcode_Template)
//  so you can apply clean architecture to your iOS and MacOS projects,
//  see more http://clean-swift.com
//
import UIKit
import Foundation
struct HomeModel : Codable{
    
    struct Response: Codable {
        var id: Int
        var name: String
        var sub: String
        var t: Int
    }
    
    struct List : Codable{
        var account: String?
        var branch: String?
        var process: String?
        var date: String?
        
    }
    
    
}
