//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 3.01.2024.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        getFollowers()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout()) // Tum ekrani doldur
        view.addSubview(collectionView) // ilk olusturduk sonra icerisine yerlestirdik
        collectionView.backgroundColor = .systemRed
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }

    // Refactor
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout { // viewController does not need to know this function. That's why it will be removed from here.
        let width = view.bounds.width
        let padding : CGFloat = 12 // Kenarlardan istedigim bosluk 12. Total view'a gore ayarlayacagim icin 2 ile carpacagim.
        let minimumItemSpacing: CGFloat = 10 // Spacing 10 olacak. Total view'a gore ayarlayacagim icin 2 ile carpacagim.
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40) // Height'ta Labelimiz icin yer birakiyoruz.
        
        return flowLayout
    }
    
    
    func getFollowers() {
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print(followers)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad stuff happened", message: error.rawValue, buttonTitle: "ok")
            }
        }
    }
}

