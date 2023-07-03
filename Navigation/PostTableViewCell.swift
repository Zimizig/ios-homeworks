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
        let width = UIScreen.main.bounds.width
        
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: width))
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var descriptionText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        //label.backgroundColor = .cyan
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        
        //stackView.distribution = .fillEqually
        //stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let hStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        
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
        descriptionText.text = post.description
        likesLabel.text = String(post.likes)
        viewsLabel.text = String(post.views)
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        vStack.addArrangedSubview(authorLabel)
        vStack.addArrangedSubview(postImageView)
        vStack.addArrangedSubview(descriptionText)
        contentView.addSubview(vStack)
    }
    
    private func setConstraints() {
        
        authorLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 16).isActive = true
        postImageView.bottomAnchor.constraint(equalTo: descriptionText.topAnchor , constant: 16).isActive = true
        postImageView.heightAnchor.constraint(equalToConstant: contentView.bounds.width).isActive = true
        postImageView.widthAnchor.constraint(equalToConstant: contentView.bounds.width).isActive = true
        
        descriptionText.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        descriptionText.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        descriptionText.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        
        
        vStack.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
    
    
    

}
