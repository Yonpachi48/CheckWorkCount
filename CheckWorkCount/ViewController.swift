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
    
    var count: Int = 0
    
    
    
    @IBAction func tapbutton(_ sender: Any){
        
        count = count + 1
        countLabel.text = String(count)
        
    }
    
    @IBAction func clearbutton(_ sender:Any){
        
        count = 0
        countLabel.text = String(count)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        
        print(countLabel.text ?? "")
    }
    
    // tapButtonが押された時の処理
    // countに1を足してchangeColor関数を呼び出す
    // countLabeにcountを入れて表示
    
    
    
    // clearButtonが押された時の処理
    // countを0にしてchangeColor関数を呼び出す
    // countLabeにcountを入れて表示
    
    
    
    // テキストの色を変えるchangeColor関数
    // 引数はcount(int)で戻り値はなし
    // countが10以上の時は赤、0未満の時は青、それ以外は黒にする


    

}

