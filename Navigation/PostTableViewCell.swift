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
        return label
    }()
    
    var postImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    var descriptionTextView: UITextView = {
        let textView = UITextView()
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
    
    
    
    
    func setup(post: PostModel) {
        authorLabel.text = post.author
        postImageView.image = UIImage(named: post.image)
        descriptionTextView.text = post.description
        likesLabel.text = String(post.likes)
        viewsLabel.text = String(post.views)
    }

}
