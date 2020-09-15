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
        HTTPManager.shared.get(urlString: KEY.URLS.baseURL + KEY.URLS.people, completionBlock: { [weak self] result in
            guard let self = self else {return}
            switch result {
            case .failure(let error):
                completion(false)
            case .success(let resposneData) :
                do
                {
                    if let json = (try? JSONSerialization.jsonObject(with: resposneData, options: [])) as? Dictionary<String,AnyObject>{
                        
                        if let dataArray = json["results"] as? [[String:Any]]{
                            for dic in dataArray{
                                let value = CharactersListModel(fromDictionary: dic)
                                self.charList.append(value)
                            }
                            completion( true)
                        }
                    }
                } catch {
                    // deal with error from JSON decoding if used in production
                }
            }
        })
    }


}
