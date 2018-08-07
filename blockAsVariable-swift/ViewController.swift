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
    let servicios : prueba_WS = prueba_WS()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        servicios.QueryTraerTodosLosDatos { (objetoModelo) in
            self.lblShowUserText.text = objetoModelo.strPrueba
        }
        
    }
    
    @IBAction func btnShowSecondVC(_ sender: UIButton) {
        
        if let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
           
            secondVC.sendHandler { (strTextUser) in
                if let text = strTextUser{
                    self.lblShowUserText.text = text
                }
            }
            
            present(secondVC, animated: true, completion: nil)
            
        }
        
    }
  
    
}

