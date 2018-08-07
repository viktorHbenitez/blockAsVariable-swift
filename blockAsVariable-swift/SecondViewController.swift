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
    
    // Declarate the block syntax for function types is (in) -> out.
    typealias CompletionBlock = (String?) -> Void
    
    var secondHandler : CompletionBlock?
    
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

    func sendHandler(handler:@escaping CompletionBlock) {
        secondHandler = handler
    }
   
    
}
