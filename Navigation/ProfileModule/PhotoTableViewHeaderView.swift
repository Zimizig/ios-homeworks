//
//  PhotoTableViewHeaderView.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import Foundation
import UIKit

class PhotoTableViewHeaderView: UITableViewHeaderFooterView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 12, y: 24, width: UIScreen.main.bounds.width, height: 24))
        label.text = "Photos"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        //label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        
        addSubview(titleLabel)
        //translatesAutoresizingMaskIntoConstraints = false
        /*
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        */
    }
    
    
    
}
