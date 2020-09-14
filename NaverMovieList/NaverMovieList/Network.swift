//
//  Network.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/14.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import Foundation
import Alamofire

class Network {
    
    static let shared = Network()
    
    let headers: HTTPHeaders = [
        "X-Naver-Client-Id": "dhc5VMWKD2yfPrhCTL8b",
        "X-Naver-Client-Secret": "V3Y28fqUn8",
        "Content-Type": "application/json"
    ]
    
    func getMovieList(parameters:Parameters, completion: @escaping(_ result : Data) -> Void){
        let url = "/v1/search/movie.json"
        AF.request(Network.baseURL+url, method: .get, parameters: parameters, headers: headers).responseJSON{
            response in
            switch response.result {
            case .success(_):
                print("success response !!")
                completion(response.data!)
                break
            case let .failure(error):
                print(error)
                print(response.data!)
                break
            }
        }
    }
    
    class var baseURL : String {
        return "https://openapi.naver.com"
    }
}
