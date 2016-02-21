//
//  ViewController.swift
//  MusicVideo
//
//  Created by Volkan on 21.02.2016.
//  Copyright © 2016 Volkan Tay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Call Api
        let api = APIManager();
        api.loadData("http://volkantay-001-site1.ctempurl.com/api/user/getuser",completion:didLoadData)
    }
    
    func didLoadData(result:String){
    
        let alert = UIAlertController(title: (result), message: nil, preferredStyle:.Alert)
        let okAction = UIAlertAction(title: "Tamam", style: .Default){ action-> Void in}
        let alert2 = UIAlertController(title: (result), message: nil, preferredStyle:.Alert)
        let cancelAction = UIAlertAction(title: "İptal", style: .Default){ action-> Void in}
        
        alert.addAction(okAction)
              alert.addAction(cancelAction)

        
          self.presentViewController(alert, animated: true, completion: nil)
       
    }

   


}

