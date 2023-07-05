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
        let layout = UICollectionViewFlowLayout()
        collection.collectionViewLayout = layout
        collection.delegate = self
        collection.dataSource = self
        
        //collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")

        return collection
    
    }()
  
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCollectionView(){
        self.addSubview(collectionView)
    }

}

extension PhotoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        cell.backgroundColor = .black
        return cell
    }
}

extension PhotoTableViewCell: UICollectionViewDelegateFlowLayout {
    
    
}
