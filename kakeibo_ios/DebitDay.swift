//
//  DebitDay.swift
//  kakeibo-ios
//
//  Created by Seino Yoshinori on 2016/11/12.
//  Copyright © 2016年 yoshinori. All rights reserved.
//

import Foundation

class DebitDay {
    let day : Date
    
    init() {
        day = DateTimeService().today()
    }
}
