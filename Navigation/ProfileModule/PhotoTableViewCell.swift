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
        let collectionView = UICollectionView(frame:.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .cyan
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCollectionView()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    private func setupCollectionView() {
        
        self.contentView.addSubview(collectionView)
        
        collectionView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    
    }
}

 extension PhotoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     1
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! PhotoCollectionViewCell
    
 return cell
        }
 }

extension PhotoTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 60, height: 60)
    }
    
    
    
    
    
}
 
