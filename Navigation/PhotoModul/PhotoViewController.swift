//
//  PhotoViewController.swift
//  Navigation
//
//  Created by mac on 07.07.2023.
//

import UIKit

class PhotoViewController: UIViewController, UINavigationBarDelegate {

    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    

    private lazy var navigationBar: UINavigationBar = {
        let height: CGFloat = 75
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: height))
        navbar.backgroundColor = UIColor.white
        navbar.delegate = self

        let navItem = UINavigationItem()
        navItem.title = "Gallery"
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(popVC))
        navbar.setItems([navItem], animated: true)
        return navbar
    }()
    
    
    
    private var photos = PhotoModel.getPhotos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.title = "Gallery"
        setupCollectionView()
        
    }
    
    @objc func popVC() {
        navigationController?.popViewController(animated: true)
    }
 
    
    private func setupCollectionView() {
        
        self.view.addSubview(navigationBar)
        self.view.addSubview(collectionView)
    
        collectionView.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor,constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: 0).isActive = true
    }

    

    
}

extension PhotoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
        PhotoCollectionViewCell
        cell.imageView.backgroundColor = .black
        cell.imageView.image = UIImage(named: photos[indexPath.item].photoName)
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! PhotoCollectionViewCell
        cell.layer.zPosition = 1
        
        cell.transform = CGAffineTransform(scaleX: 3, y: 3)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWindth = UIScreen.main.bounds.width
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let interLineSpaces = layout.minimumLineSpacing*4
        let itemWindth = (screenWindth - interLineSpaces)/3
        let itemSize = CGSize(width: itemWindth, height: itemWindth)
        return itemSize
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}
