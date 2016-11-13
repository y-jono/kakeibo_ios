//
//  Expence.swift
//  kakeibo-ios
//
//  Created by Seino Yoshinori on 2016/11/12.
//  Copyright © 2016年 yoshinori. All rights reserved.
//

import Foundation

enum ExpenceType
{
    case income
    case outcome
}

class Expence {
    // 日付 費目	内訳	収支	詳細
    let recordDate : Date
    let section = Section(name: "ほげ")
    let subsection = SubSection(name: "嗜好品")
    let amount = Money(1080)
    let detail = "ウイスキー"
//    let account = Account()
//    let way = WayOfUse()
//    let isIncome = ExpenceType.income
//    let debitDay = DebitDay()
//    let shop = Shop()
    
    init ()
    {
        recordDate = DateTimeService().now()
    }
}
