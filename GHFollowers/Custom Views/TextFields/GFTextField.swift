//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 2.01.2024.
//

import UIKit

class GFTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() { // Cok fazla textfield kullanmayacak olsak da ayarlanmasi gereken cok fazla detay var ve bunu her seferinde yapmamiza gerek kalmayacak.
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray3.cgColor
        
        textColor = .label // black on light mode, white on dark mode
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true // id cok uzunsa kucult
        minimumFontSize = 12 // ama minimumu bu olsun
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        //keyboardType =
        returnKeyType = .go
        placeholder = "Enter a username"
    }
}
