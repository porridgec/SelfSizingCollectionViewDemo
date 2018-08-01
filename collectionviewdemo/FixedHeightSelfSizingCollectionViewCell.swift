//
//  FixedHeightSelfSizingCollectionViewCell.swift
//  collectionviewdemo
//
//  Created by Hahn.Chan on 2018/8/1.
//  Copyright © 2018 Hahn Chan. All rights reserved.
//

import UIKit

class FixedHeightSelfSizingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.translatesAutoresizingMaskIntoConstraints = false
//        heightConstraint.constant = 50
    }

}
