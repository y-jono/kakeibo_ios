//
//  ExpencesRepository.swift
//  kakeibo-ios
//
//  Created by Seino Yoshinori on 2016/11/12.
//  Copyright © 2016年 yoshinori. All rights reserved.
//

import Foundation

class ExpenceRepository {
    
    func requestExpences(at: Year, in: Month, responseHandler: @escaping ([Expence])->Void) {
        DispatchQueue.global().asyncAfter(deadline:.now() + 1, execute: {
            let expences = [
                Expence()
                , Expence()
            ]
            responseHandler(expences)
        })
    }
}
