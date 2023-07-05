//
//  PhotoTableViewCell.swift
//  Navigation
//
//  Created by mac on 05.07.2023.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    //var collectionView: UICollectionView!
    
    private lazy var view: UIView = {
        let view = UIView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        view.backgroundColor = .green
        //view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
      
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //setupCollectionView()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        contentView.addSubview(view)
        
        
        
    }
    
    /*
    private func setupCollectionView() {
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
        self.addSubview(collectionView)
        
        collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    */

    /*
    private func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }
     */

}


/*
 extension PhotoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 1
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
 let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! PhotoCollectionViewCell
 cell.view.backgroundColor = .green
 
 return cell
 }
 }
 
 extension PhotoTableViewCell: UICollectionViewDelegateFlowLayout {
 
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 CGSize(width: 100, height: 100)
 }
 
 }
 
 */
