//
//  APIManager.swift
//  DutyFree-UI
//
//  Created by Vishal on 02/07/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

//import UIKit
import SwiftUI
import Combine
import Alamofire
class APIManager: ObservableObject {
    
    func getData(url: String, param: String, completion: @escaping ([String:Any]) -> Void) {
        var urlString = url
        if param != "" {
            urlString = url + "/\(param)"
        }
        AF.request(urlString, method: .get)
            .responseJSON { (response) in
                switch response.result {
                case .success:
                    if let JSON = response.value as? [String: Any] {
                        print("success==>",JSON)
                        completion(JSON)
                    } else {
                        
                    }
                    break
                case .failure(let error):
                    print("failure",error.localizedDescription)
                    break
                }
        }
    }
    
    func getData_Auth(url: String, param: String, completion: @escaping ([String:Any]) -> Void) {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + AppData.shared.token
        ]
        var urlString = url
        if param != "" {
            urlString = url + "/\(param)"
        }
        AF.request(urlString, method: .get, headers: headers)
            .responseJSON { (response) in
                switch response.result {
                case .success:
                    if let JSON = response.value as? [String: Any] {
                        print("success==>",JSON)
                        completion(JSON)
                    } else {
                        
                    }
                    break
                case .failure(let error):
                    print("failure",error.localizedDescription)
                    break
                }
        }
    }
    
    func postData(url: String, param:[String:Any], completion: @escaping ([String:Any]) -> Void) {
        AF.request(url, method: .post, parameters: param)
            .responseJSON { (response) in
                switch response.result {
                case .success:
                    if let JSON = response.value as? [String: Any] {
                        print("success==>",JSON)
                        completion(JSON)
                    } else {
                        
                    }
                    break
                case .failure(let error):
                    print("failure",error.localizedDescription)
                    break
                }
        }
    }
    
    func postData_Auth(url: String, param:[String:Any], completion: @escaping ([String:Any]) -> Void) {
        let headers: HTTPHeaders = [
            "Authorization": "Bearer " + AppData.shared.token
        ]
        AF.request(url, method: .post, parameters: param, headers: headers)
            .responseJSON { (response) in
                switch response.result {
                case .success:
                    if let JSON = response.value as? [String: Any] {
                        print("success==>",JSON)
                        completion(JSON)
                    } else {
                        
                    }
                    break
                case .failure(let error):
                    print("failure",error.localizedDescription)
                    break
                }
        }
    }
}
