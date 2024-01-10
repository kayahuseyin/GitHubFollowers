//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 9.01.2024.
//

import UIKit

struct UIHelper {
    // Refactor
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout { // viewController does not need to know this function. That's why it will be removed from here.
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
}
