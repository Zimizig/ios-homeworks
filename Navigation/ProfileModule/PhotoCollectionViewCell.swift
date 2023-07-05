//
//  PhotoCollectionViewCell.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
  
    private lazy var label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .black
        label.text = "Hello"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
