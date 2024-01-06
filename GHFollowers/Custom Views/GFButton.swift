//
//  GFButton.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 2.01.2024.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame) // calls parent
        // custom code
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline) // bold
        translatesAutoresizingMaskIntoConstraints = false // olusturdugum her buton icin tekrar tekrar yapmama gerek kalmayacak.
    }
}
