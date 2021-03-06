//
//  BookingRouter.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 1/3/2565 BE.
//  Copyright (c) 2565 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates(https://github.com/Andrei-Popilian/VIP_Design_Xcode_Template)
//  so you can apply clean architecture to your iOS and MacOS projects,
//  see more http://clean-swift.com
//

import UIKit

protocol BookingRouting {
  
  func routeTo(_ route: BookingModel.Route)
}

final class BookingRouter {
  
  private weak var viewController: UIViewController?
  
  init(viewController: UIViewController?) {
    self.viewController = viewController
  }
}


// MARK: - BookingRouting
extension BookingRouter: BookingRouting {
  
  func routeTo(_ route: BookingModel.Route) {
    DispatchQueue.main.async {
      switch route {
        
      case .dismissBookingScene:
        self.dismissBookingScene()
        
      case .xScene(let data):
        self.showXSceneBy(data)
      }
    }
  }
}


// MARK: - Private Zone
private extension BookingRouter {
  
  func dismissBookingScene() {
    viewController?.dismiss(animated: true)
  }
  
  func showXSceneBy(_ data: Int) {
    print("will show the next screen")
  }
}
