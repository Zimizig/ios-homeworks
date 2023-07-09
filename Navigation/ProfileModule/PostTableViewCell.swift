//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by mac on 03.07.2023.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    let width = UIScreen.main.bounds.width
    
    lazy var authorLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: width))
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor.black
        label.numberOfLines = 2
        label.backgroundColor = .green
        label.contentMode = .bottomLeft
        
        return label
    }()
    
   lazy var postImageView: UIImageView = {
        
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: width))
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .black
        return image
    }()
    
     lazy var descriptionText: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: (width - 64), height: width))
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor.systemGray
        label.textAlignment = .left
        
        return label
    }()
    
   lazy var likesLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: 50))
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        return label
    }()
    
    var viewsLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = UIColor.black
        label.backgroundColor = .cyan
        //label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let vStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 100
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private var hStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        //stackView.backgroundColor = .red
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
        vStack.addArrangedSubview(hStack)
        contentView.addSubview(vStack)
    }
    
    private func setConstraints() {

        vStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        vStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
     
    }
}
