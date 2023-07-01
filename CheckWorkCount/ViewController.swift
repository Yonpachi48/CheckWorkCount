//
//  ViewController.swift
//  CheckWorkCount
//
//  Created by Yudai Takahashi on 2023/01/28.
//

// カウントアプリを作ろう
// tapButtonを押すとcountが1ずつ増える
// changeColor関数を作ってcountが10以上の時は赤、0未満の時は青、それ以外は黒にしよう！
// clearButtonを押すとcountを0にする


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tapButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var countLabel: UILabel!
    
    var count: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        
        print(countLabel.text ?? "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        count = 0
    }
    
    // tapButtonが押された時の処理
    // countに1を足してchangeColor関数を呼び出す
    // countLabeにcountを入れて表示
    // 応用：countが20になったらEndViewControllerに画面遷移する
    
    
    
    // clearButtonが押された時の処理
    // countを0にしてchangeColor関数を呼び出す
    // countLabeにcountを入れて表示
    
    
    
    // テキストの色を変えるchangeColor関数
    // 引数はcount(int)で戻り値はなし
    // countが10以上の時は赤、0未満の時は青、それ以外は黒にする


    

}

