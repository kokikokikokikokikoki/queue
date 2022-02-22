//
//  HomeRouter.swift
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

protocol HomeRouting {
  
  func routeTo(_ route: HomeModel.Route)
}

final class HomeRouter {
  
  private weak var viewController: UIViewController?
  
  init(viewController: UIViewController?) {
    self.viewController = viewController
  }
}


// MARK: - HomeRouting
extension HomeRouter: HomeRouting {
  
  func routeTo(_ route: HomeModel.Route) {
    DispatchQueue.main.async {
      switch route {
        
      case .dismissHomeScene:
        self.dismissHomeScene()
        
      case .xScene(let data):
        self.showXSceneBy(data)
      }
    }
  }
}


// MARK: - Private Zone
private extension HomeRouter {
  
  func dismissHomeScene() {
    viewController?.dismiss(animated: true)
  }
  
  func showXSceneBy(_ data: Int) {
    print("will show the next screen")
  }
}
