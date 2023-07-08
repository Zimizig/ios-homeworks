//
//  SecondProfileViewController.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import UIKit


protocol NavigateToPhotoVCDelegate {
    func navigate()
}

class ProfileViewController: UIViewController {
    
    var posts = PostModel.getPosts()
    
    
    lazy private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(PhotoTableViewCell.self, forCellReuseIdentifier: "photoCell")
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUIElements()
        setConstraints()
    }
    
    
    private func setUIElements() {
        self.view.addSubview(tableView)
    }
    
    private func setConstraints() {
        tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
            
        } else {
            return posts.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PostTableViewCell
        let photoCell = tableView.dequeueReusableCell(withIdentifier: "photoCell") as! PhotoTableViewCell
        
        if indexPath.section == 0 {
            photoCell.delegate = self
            return photoCell
        } else {
            cell.configure(post: posts[indexPath.row])
            return cell
            
        }
    }
    
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(PhotoViewController(), animated: true)
    }
    */
  
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            let header = ProfileHeaderView(reuseIdentifier: "header")
            return header
        } else {
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 200
          
        } else {
            let rowHeight = UIScreen.main.bounds.height - 120
             return rowHeight
            
        }
        
    }
}

extension ProfileViewController: NavigateToPhotoVCDelegate {
    func navigate() {
        //let photoNC = UINavigationController(rootViewController: PhotoViewController())
        
        navigationController?.pushViewController(PhotoViewController(), animated: true)
    }
    
    
}

