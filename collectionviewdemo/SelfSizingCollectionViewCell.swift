//
//  SelfSizingCollectionViewCell.swift
//  collectionviewdemo
//
//  Created by Hahn.Chan on 2018/8/1.
//  Copyright © 2018 Hahn Chan. All rights reserved.
//

import UIKit

class SelfSizingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.translatesAutoresizingMaskIntoConstraints = false
        widthConstraint.constant = UIScreen.main.bounds.size.width - 40
    }

}
