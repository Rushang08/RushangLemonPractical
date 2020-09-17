//  HTTPManager.swift
//  RushangLemonPractical
//
//  Created by Rushang Prajapati on 15/09/20.
//  Copyright © 2020 Rushang. All rights reserved.


import Foundation
import SVProgressHUD

class HTTPManager {
    static let shared: HTTPManager = HTTPManager()

    enum HTTPError: Error {
        case invalidURL
        case invalidResponse(Data?, URLResponse?)
    }
    
    public func get(urlString: String, completionBlock: @escaping (Result<Data, Error>) -> Void) {
        if Reachability.isConnectedToNetwork() {
            
            SVProgressHUD.show()
            guard let url = URL(string: urlString) else {
                completionBlock(.failure(HTTPError.invalidURL))
                showAlertMessage(vc:(appDelegate.window?.rootViewController)!, titleStr:KEY.APPNAME.STAR_WARS, messageStr: KEY.MESSAGE.URL_INVALID)
                SVProgressHUD.dismiss()
                return
            }
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard error == nil else {
                    completionBlock(.failure(error!))
                    showAlertMessage(vc:(appDelegate.window?.rootViewController)!, titleStr:KEY.APPNAME.STAR_WARS, messageStr: KEY.MESSAGE.SOMETHING_WENT_WRONG)
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
        else{
            SVProgressHUD.dismiss()
            showAlertMessage(vc:(appDelegate.window?.rootViewController)!, titleStr:KEY.APPNAME.STAR_WARS, messageStr: KEY.MESSAGE.INTERNET_NOTAVAILABLE)
        }
    }
}
