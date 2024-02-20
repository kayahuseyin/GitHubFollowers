//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Hüseyin Kaya on 3.01.2024.
//

import UIKit
import SafariServices

// extension içerisinde variable olusturamıyoruz o yuzden file fileprivate diye bir şey kullanıyoruz:



extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
