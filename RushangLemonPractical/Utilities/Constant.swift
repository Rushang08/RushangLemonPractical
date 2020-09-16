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
    
    struct VIEWCONTROLLERS {
        static let DETAILVIEW  = "CharacterDetailViewController"
    }
    
    struct STORYBOARD {
        static let mainStroyBoard  = "Main"
    }
    struct CELL {
        static let CHARACTERS_TABLE  = "ListCharacters"
        static let DETAIL_TABLE  = "filmName"
        
    }
    struct URLS {
        static let baseURL: String = "https://swapi.dev/api/"
        static let people: String = "people/?page="

    }
    
    struct APPNAME {
        static let AEDLink = "AEDLink"
    }
    
}

