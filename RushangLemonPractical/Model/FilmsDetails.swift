//
//  FilmsDetails.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 16, 2020

import Foundation


class FilmsDetails : NSObject, NSCoding{

    var characters : [String]!
    var created : String!
    var director : String!
    var edited : String!
    var episodeId : Int!
    var openingCrawl : String!
    var planets : [String]!
    var producer : String!
    var releaseDate : String!
    var species : [String]!
    var starships : [String]!
    var title : String!
    var url : String!
    var vehicles : [String]!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        created = dictionary["created"] as? String
        director = dictionary["director"] as? String
        edited = dictionary["edited"] as? String
        episodeId = dictionary["episode_id"] as? Int
        openingCrawl = dictionary["opening_crawl"] as? String
        producer = dictionary["producer"] as? String
        releaseDate = dictionary["release_date"] as? String
        title = dictionary["title"] as? String
        url = dictionary["url"] as? String
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if created != nil{
            dictionary["created"] = created
        }
        if director != nil{
            dictionary["director"] = director
        }
        if edited != nil{
            dictionary["edited"] = edited
        }
        if episodeId != nil{
            dictionary["episode_id"] = episodeId
        }
        if openingCrawl != nil{
            dictionary["opening_crawl"] = openingCrawl
        }
        if producer != nil{
            dictionary["producer"] = producer
        }
        if releaseDate != nil{
            dictionary["release_date"] = releaseDate
        }
        if title != nil{
            dictionary["title"] = title
        }
        if url != nil{
            dictionary["url"] = url
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        characters = aDecoder.decodeObject(forKey: "characters") as? [String]
        created = aDecoder.decodeObject(forKey: "created") as? String
        director = aDecoder.decodeObject(forKey: "director") as? String
        edited = aDecoder.decodeObject(forKey: "edited") as? String
        episodeId = aDecoder.decodeObject(forKey: "episode_id") as? Int
        openingCrawl = aDecoder.decodeObject(forKey: "opening_crawl") as? String
        planets = aDecoder.decodeObject(forKey: "planets") as? [String]
        producer = aDecoder.decodeObject(forKey: "producer") as? String
        releaseDate = aDecoder.decodeObject(forKey: "release_date") as? String
        species = aDecoder.decodeObject(forKey: "species") as? [String]
        starships = aDecoder.decodeObject(forKey: "starships") as? [String]
        title = aDecoder.decodeObject(forKey: "title") as? String
        url = aDecoder.decodeObject(forKey: "url") as? String
        vehicles = aDecoder.decodeObject(forKey: "vehicles") as? [String]
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if characters != nil{
            aCoder.encode(characters, forKey: "characters")
        }
        if created != nil{
            aCoder.encode(created, forKey: "created")
        }
        if director != nil{
            aCoder.encode(director, forKey: "director")
        }
        if edited != nil{
            aCoder.encode(edited, forKey: "edited")
        }
        if episodeId != nil{
            aCoder.encode(episodeId, forKey: "episode_id")
        }
        if openingCrawl != nil{
            aCoder.encode(openingCrawl, forKey: "opening_crawl")
        }
        if planets != nil{
            aCoder.encode(planets, forKey: "planets")
        }
        if producer != nil{
            aCoder.encode(producer, forKey: "producer")
        }
        if releaseDate != nil{
            aCoder.encode(releaseDate, forKey: "release_date")
        }
        if species != nil{
            aCoder.encode(species, forKey: "species")
        }
        if starships != nil{
            aCoder.encode(starships, forKey: "starships")
        }
        if title != nil{
            aCoder.encode(title, forKey: "title")
        }
        if url != nil{
            aCoder.encode(url, forKey: "url")
        }
        if vehicles != nil{
            aCoder.encode(vehicles, forKey: "vehicles")
        }
    }
}