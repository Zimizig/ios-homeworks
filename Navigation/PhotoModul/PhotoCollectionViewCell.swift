//
//  PhotoCollectionViewCell.swift
//  Navigation
//
//  Created by mac on 07.07.2023.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .black
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "xmark")
        button.setImage(image, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.white.cgColor
        button.alpha = 0.5
        button.layer.borderWidth = 1
        button.isHidden = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 6
        addSubview(imageView)
        addSubview(closeButton)
        
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    
    }
    

}







