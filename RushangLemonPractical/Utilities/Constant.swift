//  Constant.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.


import Foundation
import UIKit

var pageCount: Int = 1
var totalCount: Int = 0
let appDelegate = UIApplication.shared.delegate as! AppDelegate

struct KEY {
    
    struct FONT {
        static let STAR_LOGO_FONT  = "Star Jedi Logo MonoLine"
        
    }
    
    struct APP_GENERAL {
        static let SECTION_FILM_TITLE  = "Films"
        static let APP_LOGO_IMAGENAME  = "AppLogo"
        static let MOVIE_PLACEHOLDER_IMAGENAME  = "Movie"
    }
    
    struct VIEWCONTROLLERS {
        static let DETAILVIEW  = "CharacterDetailViewController"
    }
    
    struct MESSAGE {
        static let INTERNET_NOTAVAILABLE  = "The Internet connection appears to be offline."
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
        static let STAR_WARS = "StarWars"
    }
    
}

public func showAlertMessage(vc: UIViewController, titleStr:String, messageStr:String) -> Void {
    let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: UIAlertController.Style.alert);
    let OkayButton = UIAlertAction(title:"Okay", style: .default) { (UIAlertAction) in
        
    }
    alert.addAction(OkayButton)
    vc.present(alert, animated: true, completion: nil)
}
