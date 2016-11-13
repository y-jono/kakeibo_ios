//
//  ExpenceCell.swift
//  kakeibo-ios
//
//  Created by Seino Yoshinori on 2016/11/12.
//  Copyright © 2016年 yoshinori. All rights reserved.
//

import UIKit
import FontAwesome

class ExpenceCell : UITableViewCell {
    
    @IBOutlet weak var labelAmount: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var labelSubsection: UILabel!
    @IBOutlet weak var labelSection: UILabel!
    
    var expence : Expence = Expence() {
        didSet {
            labelSection.font = expence.fontSection
            labelSection.text = expence.textSection
            labelSubsection.text = expence.subsection.name
            labelDetail.text = expence.detail
            labelAmount.text = expence.amount.amount.description
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension Section {
    
    private var iconMap : Dictionary<String, FontAwesome> {
        return [
            "食費": FontAwesome.cutlery
            ,"新生活費": FontAwesome.home
        ]
    }
    
    var textFontAwesome : String {
        guard let fa = iconMap[self.name] else {
            // TODO: Localize currency
            return String.fontAwesomeIcon(name: .yen)
        }
        return String.fontAwesomeIcon(name: fa)
    }
}

extension Expence {
    
    var fontSection : UIFont {
        return UIFont.fontAwesome(ofSize: 30)
    }
    
    var textSection : String {
        return self.section.textFontAwesome
    }
}
