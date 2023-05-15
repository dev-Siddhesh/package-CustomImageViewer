//
//  CustomImageViewerCollectionViewCell.swift
//
//  Created by Siddhesh jadhav on 24/12/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class CustomImageViewerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var wrapperView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet{
            if self.isSelected {
                self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                self.wrapperView.layer.borderWidth = 1.0
                self.wrapperView.layer.borderColor = UIColor.white.cgColor
            }else {
                self.transform = CGAffineTransform.identity
                self.wrapperView.layer.borderWidth = 0.0
                self.wrapperView.layer.borderColor = UIColor.clear.cgColor
            }
        }
    }
}
