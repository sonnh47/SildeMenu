//
//  ViewController.swift
//  SildeMenu
//
//  Created by Son on 9/12/18.
//  Copyright © 2018 NguyenHoangSon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileOutlet: UIButton!
    @IBOutlet weak var slideMenu: UIView!
    var check = true
    @IBOutlet weak var left: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func Show(_ sender: Any) {
        showMenu()
    }
    
    func showMenu() {
        check = !check
        if check == true {
            self.left.constant = -200
            
        }else{
            self.left.constant = 0
        }
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func profile(_ sender: UIButton) {
        showMenu()
        performSegue(withIdentifier: "profile", sender: sender)
    }
    
    @IBAction func setting(_ sender: Any) {
        showMenu()
        performSegue(withIdentifier: "setting", sender: sender)
    }
    
    @IBAction func logout(_ sender: UIButton) {
        showMenu()
        performSegue(withIdentifier: "logout", sender: sender)
    }
    
}

