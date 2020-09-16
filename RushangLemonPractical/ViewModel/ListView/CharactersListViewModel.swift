//
//  CharactersListViewModel.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.
//

import UIKit
class CharactersListViewModel {

    var charList = [CharactersListModel]()

    func fetchCharactersListwithDetail(completion: @escaping ( Bool) -> Void) {
        HTTPManager.shared.get(urlString: KEY.URLS.baseURL + KEY.URLS.people + "\(pageCount)", completionBlock: { [weak self] result in
            guard let self = self else {return}
            switch result {
            case .failure( _):
                completion(false)
            case .success(let resposneData) :
                if let json = (try? JSONSerialization.jsonObject(with: resposneData, options: [])) as? Dictionary<String,AnyObject>{
                    totalCount = json["count"] as! Int
                    if let dataArray = json["results"] as? [[String:Any]]{
                        for dic in dataArray{
                            let value = CharactersListModel(fromDictionary: dic)
                            let filteredItems = self.charList.filter { $0.name == value.name }
                            if filteredItems.count == 0{
                                self.charList.append(value)
                            }

                        }
                        completion( true)
                    }
                }
            }
        })
    }
}
