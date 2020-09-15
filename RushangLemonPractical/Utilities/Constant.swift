//  Constant.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.


import Foundation
import UIKit

var pageCount: Int = 1
var totalCount: Int = 0

struct KEY {
    
    struct Message {
        
    }
    
    struct EventLogImage {
        
    }
    
    struct STORYBOARD {
        static let mainStroyBoard  = "Main"
    }
    struct CELL {
        static let CHARACTERS_TABLE  = "ListCharacters"
        static let DETAIL_TABLE  = "filmName"
        
    }
    struct URLS {
        static let baseURL: String = "https://swapi.dev/api/"//DEV
        static let people: String = "people/?page="//DEV

    }
    
    struct APPNAME {
        static let AEDLink = "AEDLink"
    }
    
    
}
