//
//  CollectionViewCell.swift
//  Navigation
//
//  Created by mac on 06.07.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(origin: CGPoint(x: 20, y: 20), size: CGSize(width: 50, height: 50)))
        label.textColor = .black
        return label
    }()
    
}
