//
//  SecondViewController.swift
//  blockAsVariable-swift
//
//  Created by Victor Hugo Benitez Bosques on 06/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    // Declarate the block
    var secondHandler: ((String) -> Void)?
    @IBOutlet weak var txfSetText: UITextField!
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
    }
    
    
    @IBAction func btnSendAnswer(_ sender: UIButton) {
        callback()
        dismiss(animated: true, completion: nil)
        
    }
    
    func callback()  {
        
        guard let handler = secondHandler else {return}
        
        if let userText = txfSetText.text {
            handler(userText)
        }
    }
    
    func sendBlk(completionHandler : @escaping (String)-> ()) {
        secondHandler = completionHandler
    }
    
    
    
}
