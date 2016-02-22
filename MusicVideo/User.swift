
//
//  MusicVideo.swift
//  MusicVideo
//
//  Created by Admin on 13/2/2016.
//  Copyright © 2016 Admin. All rights reserved.
//

import Foundation

class User {
    
    // Data Encapsulation
    
    private var _UserId: String
    private var _UserName: String
    private var _AdSoyad: String
    
    // This variable gets created from the UI
    //var vImageData: NSData?
    
    //Make a getter
    
    var UserId: String {
        return _UserId
    }
    
    var UserName: String {
        return _UserName
    }
    
    var AdSoyad: String {
        return _AdSoyad
    }
    
    
    init(data: JSONDictionary) {
        
        // Video name
        if let arr = data["array"] as? JSONArray,
            users = arr[1] as? JSONDictionary,
            UserName = users["UserName"] as? String {
                self._UserName = UserName
        }
        else
        {
            _UserName = ""
        }

        if let arr2 = data["array"] as? JSONArray,
            users2 = arr2[1] as? JSONDictionary,
            AdSoyad = users2["AdSoyad"] as? String {
                self._AdSoyad = AdSoyad
        } else {
            _AdSoyad = ""
        }
        if let arr3 = data["array"] as? JSONArray,
            users3 = arr3[1] as? JSONDictionary,
            UserId = users3["UserId"] as? String {
                self._UserId = UserId
        } else {
            _UserId = ""
        };
        
    
}

        