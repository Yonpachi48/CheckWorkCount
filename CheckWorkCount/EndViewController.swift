//
//  EndViewController.swift
//  CheckWorkCount
//
//  Created by Yudai Takahashi on 2023/07/01.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.layer.borderWidth = 1.0
        backButton.layer.borderColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }
    
    // backButtonが押された時の処理
    // viewControllerに戻る
    @IBAction func backButtonTapped() {
        self.dismiss(animated: false)
    }
    

}
