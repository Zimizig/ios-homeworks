//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by mac on 03.07.2023.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    var authorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = UIColor.black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
    
        return label
    }()
    
    var postImageView: UIImageView = {
        
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var likesLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    var viewsLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let vStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(post: PostModel) {
        authorLabel.text = post.author
        postImageView.image = UIImage(named: post.image)
        descriptionTextView.text = post.description
        likesLabel.text = String(post.likes)
        viewsLabel.text = String(post.views)
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        vStack.addArrangedSubview(authorLabel)
        vStack.addArrangedSubview(postImageView)
        vStack.addArrangedSubview(descriptionTextView)
        contentView.addSubview(vStack)
    }
    
    private func setConstraints() {
        
        authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        let width = UIScreen.main.bounds.width
        
        postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor).isActive = true
        postImageView.heightAnchor.constraint(equalToConstant: width).isActive = true
        postImageView.widthAnchor.constraint(equalToConstant: width).isActive = true 
        
        descriptionTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        
        
        vStack.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
    
    
    

}
