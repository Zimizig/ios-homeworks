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
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor.black
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
    
        return label
    }()
    
    var postImageView: UIImageView = {
        let width = UIScreen.main.bounds.width
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var descriptionText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor.systemGray
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var likesLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var viewsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let vStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
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
        likesLabel.text = String("Likes: \(post.likes)")
        viewsLabel.text = String("Views: \(post.views)")
    }
    
    private func setupViews() {
        contentView.backgroundColor = .white
        vStack.addArrangedSubview(authorLabel)
        vStack.addArrangedSubview(postImageView)
        vStack.addArrangedSubview(descriptionText)
        hStack.addArrangedSubview(likesLabel)
        hStack.addArrangedSubview(viewsLabel)
        
        contentView.addSubview(vStack)
        contentView.addSubview(hStack)
    }
    
    private func setConstraints() {
        
        authorLabel.topAnchor.constraint(equalTo: vStack.topAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: vStack.leadingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: vStack.trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        authorLabel.bottomAnchor.constraint(equalTo: postImageView.topAnchor, constant: 0).isActive = true
        
        postImageView.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 0).isActive = true
        postImageView.bottomAnchor.constraint(equalTo: descriptionText.topAnchor , constant: 0).isActive = true
        postImageView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        postImageView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        
        descriptionText.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 0).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: vStack.bottomAnchor, constant: 0).isActive = true
        descriptionText.leadingAnchor.constraint(equalTo: vStack.leadingAnchor, constant: 16).isActive = true
        descriptionText.trailingAnchor.constraint(equalTo: vStack.trailingAnchor, constant: -16).isActive = true
        
        vStack.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        vStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        hStack.topAnchor.constraint(equalTo: vStack.bottomAnchor, constant: 0).isActive = true
        hStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        hStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        
    }
}
