//
//  CharacterDetailViewModel.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.
//

import UIKit
class CharacterDetailViewModel {

    var filmDetail = [FilmsDetails]()

    func featchFilmsDetails(url:String,completion: @escaping ( Bool) -> Void) {
        HTTPManager.shared.get(urlString: url, completionBlock: { [weak self] result in
            guard let self = self else {return}
            switch result {
            case .failure( _):
                completion(false)
            case .success(let resposneData) :
                if let json = (try? JSONSerialization.jsonObject(with: resposneData, options: [])) as? Dictionary<String,AnyObject>{
                    let value = FilmsDetails(fromDictionary: json)
                    self.filmDetail.append(value)
                    completion( true)
                }
            }
        })
    }


}
