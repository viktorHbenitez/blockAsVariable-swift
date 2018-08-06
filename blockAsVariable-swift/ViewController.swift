//
//  ViewController.swift
//  blockAsVariable-swift
//
//  Created by Victor Hugo Benitez Bosques on 06/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblShowUserText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnShowSecondVC(_ sender: UIButton) {
        
        if let SecondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            
            SecondVC.sendBlk { (strUserText: String) in
                self.lblShowUserText.text = strUserText
            }
            present(SecondVC, animated: true, completion: nil)
            
        }
        
    }
  
    
}

