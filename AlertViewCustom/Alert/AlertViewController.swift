//
//  AlertViewController.swift
//  AlertViewCustom
//
//  Created by cristian ayala on 1/25/20.
//  Copyright © 2020 cristian ayala. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    
    @IBOutlet weak var alertView: UIView!
    lazy var button : DropDownBtn = {
            let button = DropDownBtn(type: .custom)
            button.setTitle("Colors", for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
    //        button.addTarget(self, action: #selector(handleTapped), for: .touchUpInside)
            button.setupParentView(parentView: self.view)
            button.layer.cornerRadius = 5
            return button
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView(){
        self.alertView.addSubview(button)
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        button.dropDownView.dropDownOptions = ["1","2","3","4","5","6"]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
