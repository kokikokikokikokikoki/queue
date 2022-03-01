//
//  BookingViewController.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 28/2/2565 BE.
//

import UIKit

protocol BookingDisplayLogic where Self: UIViewController {
    func displaySomething()
}


class BookingViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    private var interactor: BookingBusinessLogic!
    private var router: BookingRouting!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor = BookingInteractor(viewController: self)
        router = BookingRouter(viewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    @IBAction func onClickClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}


extension BookingViewController: BookingDisplayLogic {
    func displaySomething() {
        
    }
}
