//
//  TileCollectionViewCell.swift
//  ququququ
//
//  Created by Buratsakorn Petchdee on 2/3/2565 BE.
//

import UIKit

class TileCollectionViewCell: UICollectionViewCell {
    static let identifier = "TileCollectionViewCell"
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.backgroundColor = .systemBlue
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
