//
//  PhotoTableViewCell.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private lazy var collectionTitle: UILabel = {
        
        let label = UILabel()
        label.text = "Photos"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private lazy var arrowImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        //imageView.contentMode = .right
        imageView.image = UIImage(systemName: "arrow.right")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    private let photos = PhotoModel.getFirstPhotos()
      
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    private func setupCollectionView() {
        self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionTitle)
        self.contentView.addSubview(arrowImage)
            
        
        arrowImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 20).isActive = true
        arrowImage.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -12).isActive = true
        arrowImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        arrowImage.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        collectionTitle.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 24).isActive = true
        collectionTitle.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 12).isActive = true
        
        collectionTitle.heightAnchor.constraint(equalToConstant: 24).isActive = true
        collectionTitle.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2).isActive = true
        
        collectionView.topAnchor.constraint(equalTo: self.collectionTitle.bottomAnchor,constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor,constant: 0).isActive = true
    }
    
}

extension PhotoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: photos[indexPath.item].photoName)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWindth = UIScreen.main.bounds.width
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        let sideOfsites = layout.sectionInset.left*2
        let interLineSpaces = layout.minimumLineSpacing*3
        let allINsets = sideOfsites+interLineSpaces
        
        let itemWindth = (screenWindth - allINsets)/4
        let itemSize = CGSize(width: itemWindth, height: itemWindth)
        
        return itemSize
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
    }
    
    
}
