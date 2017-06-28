//
//  MoreViewController.swift
//  SSUNOIN_iOS
//
//  Created by 김태인 on 2017. 6. 27..
//  Copyright © 2017년 Personal. All rights reserved.
//

import UIKit

class MoreViewController : UIViewController {
    @IBOutlet weak var developerView: UIView!
    
    @IBAction func contactButton(_ sender: Any) {
        let email = "gydect48@gmail.com"
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        let whiteRoundedView : UIView = UIView(frame: CGRect(x: 5, y: 5, width: self.view.frame.size.width - 25, height: 70))
        whiteRoundedView.layer.backgroundColor = CGColor(colorSpace: CGColorSpaceCreateDeviceRGB(), components: [1.0, 1.0, 1.0, 0.9])
        whiteRoundedView.layer.masksToBounds = false
        whiteRoundedView.layer.cornerRadius = 3.0
        whiteRoundedView.layer.shadowOffset = CGSize(width: -0.1, height: 0.1)
        whiteRoundedView.layer.shadowOpacity = 0.2
        
        self.developerView.addSubview(whiteRoundedView)
        self.developerView.sendSubview(toBack: whiteRoundedView)

    }
    
    override func didReceiveMemoryWarning() {
        
    }
}
