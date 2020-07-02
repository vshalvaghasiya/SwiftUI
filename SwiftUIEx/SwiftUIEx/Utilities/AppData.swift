//
//  AppData.swift
//  DutyFree-UI
//
//  Created by Vishal on 02/07/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import Foundation
import UIKit
class AppData {
    var storyboard : UIStoryboard!;
    
    var token: String = String()
  
    static let shared: AppData = {
        let instance = AppData()
        return instance
    }()
}
