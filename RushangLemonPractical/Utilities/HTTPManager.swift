//
//  LoginHTTPManager.swift
//  NCP
//
//  Created by Sanket Shah on 3/2/20.
//  Copyright © 2020 Sanket Shah. All rights reserved.
//

import Foundation
import Alamofire
import SVProgressHUD

class HTTPManager {
    static let shared: HTTPManager = HTTPManager()

    enum HTTPError: Error {
        case invalidURL
        case invalidResponse(Data?, URLResponse?)
    }
    
    public func get(urlString: String, completionBlock: @escaping (Result<Data, Error>) -> Void) {
        SVProgressHUD.show()
        guard let url = URL(string: urlString) else {
            completionBlock(.failure(HTTPError.invalidURL))
            SVProgressHUD.dismiss()
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completionBlock(.failure(error!))
                SVProgressHUD.dismiss()
                return
            }

            guard
                let responseData = data,
                let httpResponse = response as? HTTPURLResponse,
                200 ..< 300 ~= httpResponse.statusCode else {
                    completionBlock(.failure(HTTPError.invalidResponse(data, response)))
                    SVProgressHUD.dismiss()
                    return
            }
            SVProgressHUD.dismiss()
            completionBlock(.success(responseData))
        }
        task.resume()
    }
}
