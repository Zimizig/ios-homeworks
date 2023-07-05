//
//  PhotoTableViewCell.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    lazy var collectionView: UICollectionView = {
       
        let collection = UICollectionView()
        return collection
    
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
