//
//  PhotoCollectionViewCell.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
     var view: UIView = {
       let view = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        view.backgroundColor = .green
         //view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.addSubview(view)
        /*
        view.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        
        */
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
