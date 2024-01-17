//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 17.01.2024.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String! // kesin gelecek

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        print(username!)
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
