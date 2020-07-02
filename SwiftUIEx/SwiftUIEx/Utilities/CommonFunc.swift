//
//  CommonFunc.swift
//  DutyFree-UI
//
//  Created by Vishal on 02/07/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import Foundation
import SwiftUI

func after(_ delay:Double, closure:@escaping ()->()){
    DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: closure)
}

func mainThread(closure:@escaping ()->()) {
    DispatchQueue.main.async {
        closure()
    }
}
