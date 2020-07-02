//
//  Utilities.swift
//  DutyFree-UI
//
//  Created by Vishal on 29/06/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import Foundation
import Alamofire
@objc protocol  UtilityDelegate {
    @objc optional func apiCallCompleted(_ success: Bool, result: [String: Any]?, error: String, apiType: APIType)
}
class Utility {
    var window: UIWindow?
    var delegate: UtilityDelegate?
    
    func postData(url:String, param:[String:Any], apiType: APIType) {
        //        if checkInternet(){
        AF.request(url, method: .post, parameters: param)
            .responseJSON { (response) in
                switch response.result {
                case .success:
                    if let JSON = response.value as? [String: Any] {
                        let flag = JSON["flag"] as! Bool
                        if flag {
                            self.delegate?.apiCallCompleted?(true, result: JSON, error: String(), apiType: apiType)
                        } else {
                            let message = JSON["message"] as! String
                            self.delegate?.apiCallCompleted?(false, result: [:], error: message, apiType: apiType)
                        }
                    } else {
                        self.delegate?.apiCallCompleted?(false, result: [:], error: "serverDown", apiType: apiType)
                    }
                    break
                case .failure(let error):
                    self.delegate?.apiCallCompleted?(false, result: [:], error: error.localizedDescription , apiType: apiType)
                    break
                }
        }
        //        } else{
        //            SVProgressHUD.showError(withStatus: "Please check internet connection and retry.")
        //        }
    }
}
