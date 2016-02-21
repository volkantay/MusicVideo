//
//  APIManager.swift
//  MusicVideo
//
//  Created by Volkan on 21.02.2016.
//  Copyright © 2016 Volkan Tay. All rights reserved.
//

import Foundation

class APIManager {
    
    func loadData(urlString: String, completion: (result: String) -> Void) {
        
        //Verilerin cache tutulmasını engelliyor
        let config = NSURLSessionConfiguration.ephemeralSessionConfiguration()
        let session = NSURLSession(configuration: config)
        
        
        let url = NSURL(string: urlString)!
        
        let task = session.dataTaskWithURL(url) { (data, response, error) -> Void in
          
                dispatch_async(dispatch_get_main_queue())
                    {
                    
                      if error != nil {
                    completion(result: (error!.localizedDescription))
                   }
                   else {
                         completion(result: "İşlem Başarılı")
                 print(data)
                          }
        
            }
        }
        task.resume()
        
    }
}