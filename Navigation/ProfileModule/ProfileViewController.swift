//
//  SecondProfileViewController.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var posts = PostModel.getPosts()
    
        
    lazy private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(PhotoTableViewHeaderView.self, forHeaderFooterViewReuseIdentifier: "photoHeader")
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
           return posts.count
        } else {
           return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PostTableViewCell
        let photoCell = tableView.dequeueReusableCell(withIdentifier: "photoCell") as! PhotoTableViewCell
        
        if indexPath.section == 0 {
            cell.configure(post: posts[indexPath.row])
            return cell
        } else {
            
            return photoCell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let header = ProfileHeaderView(reuseIdentifier: "header")
            return header
        } else {
            let header = PhotoTableViewHeaderView(reuseIdentifier: "photoHeader")
            return header
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
           let rowHeight = UIScreen.main.bounds.height - 120
            return rowHeight
        } else {
            return 200
        }
        
    }

        
}

