//
//  ViewController.swift
//  Alert on Login Page
//
//  Created by delta.school on 30/12/19.
//  Copyright © 2019 delta.school. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var clickedonemailid: UITextField!
    
    @IBOutlet var clickedonpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func login(_ sender: UIButton) {
        
        if let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController{
            if clickedonemailid.text == "" || clickedonpassword.text == "" {
            let alert = UIAlertController(title: "Invaild Details", message: "Please fill the Full Deatils", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "Ok", style: .cancel) { (action) in
            }
            let cancelButton = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            }
            alert.addAction(okButton)
            alert.addAction(cancelButton)
            present(alert, animated: true, completion: nil)
            }
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
        
        
        
    }
    

}

