//
//  ViewController.swift
//  AlertViewCustom
//
//  Created by cristian ayala on 1/25/20.
//  Copyright © 2020 cristian ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButtonPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "AlertViewController", bundle: nil)
        let viewController = storyBoard.instantiateViewController(identifier: "AlertViewController")
        self.present(viewController, animated: true, completion: nil)
    }
    
}

