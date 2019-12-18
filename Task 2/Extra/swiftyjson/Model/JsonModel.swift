//
//  JsonModel.swift
//  swiftyjson

///  Created by Mehedi Mithu on 12/17/19.
//  Copyright © 2019 Mehedi Mithu. All rights reserved.
//

import Foundation

struct JsonModel{
    var artistName: String = ""
    var trackCensoredName: String = ""
    var artworkUrl100: String = ""
    init(){
        
    }
    
    init(json:JSON){
        artistName = json["artistName"].stringValue
        trackCensoredName = json["trackCensoredName"].stringValue
        artworkUrl100 = json["artworkUrl100"].stringValue
    }
}
