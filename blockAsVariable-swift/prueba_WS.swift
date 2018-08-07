//
//  prueba_WS.swift
//  blockAsVariable-swift
//
//  Created by Victor Hugo Benitez Bosques on 07/08/18.
//  Copyright © 2018 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation


class prueba_WS: NSObject {
    
   
    func QueryTraerTodosLosDatos(completionHandler:@escaping(objectoModelo) -> Void) {
        completionHandler(parseObjectoModelo())
    }
    
   
    fileprivate func parseObjectoModelo() -> objectoModelo {
        
        let objectModelo : objectoModelo = objectoModelo()
        objectModelo.strPrueba = "Default texto desde servicios"
       
        return objectModelo
    }
    
}

