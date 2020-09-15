//
//  CharactersListModel.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.
//


import Foundation

class CharactersListModel : NSObject, NSCoding{

    var name: String
    var height: String
    var mass: String
    var hair_color: String
    var skin_color: String
    var eye_color: String
    var birth_year: String
    var eye_gendercolor: String
    var gender: String



    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        name = dictionary["name"] as? String ?? "NA"
        height = dictionary["height"] as? String ?? "NA"
        mass = dictionary["mass"] as? String ?? "NA"
        hair_color = dictionary["hair_color"] as? String ?? "NA"
        skin_color = dictionary["skin_color"] as? String ?? "NA"
        eye_color = dictionary["eye_color"] as? String ?? "NA"
        gender = dictionary["gender"] as? String ?? "NA"
        birth_year = dictionary["birth_year"] as? String ?? "NA"
        eye_gendercolor = dictionary["eye_gendercolor"] as? String ?? "NA"
   }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any] {
        var dictionary = [String:Any]()
            dictionary["name"] = name
            dictionary["height"] = height
            dictionary["mass"] = mass
            dictionary["hair_color"] = hair_color
            dictionary["skin_color"] = skin_color
            dictionary["gender"] = gender
            dictionary["eye_color"] = eye_color
            dictionary["birth_year"] = birth_year
            dictionary["eye_gendercolor"] = eye_gendercolor
            return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder) {
        name = (aDecoder.decodeObject(forKey: "name") as? String)!
        height = (aDecoder.decodeObject(forKey: "height") as? String)!
        mass = (aDecoder.decodeObject(forKey: "mass") as? String)!
        gender = (aDecoder.decodeObject(forKey: "gender") as? String)!
        hair_color = (aDecoder.decodeObject(forKey: "hair_color") as? String)!
        skin_color = (aDecoder.decodeObject(forKey: "skin_color") as? String)!
        eye_color = (aDecoder.decodeObject(forKey: "eye_color") as? String)!
        birth_year = (aDecoder.decodeObject(forKey: "birth_year") as? String)!
        eye_gendercolor = (aDecoder.decodeObject(forKey: "eye_gendercolor") as? String)!
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(gender, forKey: "gender")
        aCoder.encode(height, forKey: "height")
        aCoder.encode(hair_color, forKey: "hair_color")
        aCoder.encode(skin_color, forKey: "skin_color")
        aCoder.encode(eye_color, forKey: "eye_color")
        aCoder.encode(birth_year, forKey: "birth_year")
        aCoder.encode(eye_gendercolor, forKey: "eye_gendercolor")
    }
}

