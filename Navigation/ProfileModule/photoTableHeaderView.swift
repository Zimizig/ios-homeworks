//
//  photoTableHeaderView.swift
//  Navigation
//
//  Created by mac on 04.07.2023.
//

import UIKit

class photoTableHeaderView: UITableViewHeaderFooterView {

    let titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 22))
        label.bounds = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 0)
        
        label.text = "Photos"
        label.backgroundColor = .cyan
        //label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .green
        setupUI()
        //setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        self.addSubview(titleLabel)
        
    }
    
    /*
    private func setConstraints(){
        
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }
        */

}
