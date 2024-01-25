//
//  ViewController.swift
//  CheckWorkCount
//
//  Created by Yudai Takahashi on 2023/01/28.
//

// カウントアプリを作ろう Lv.1
// tapButtonを押すとcountが1ずつ増える
// changeColor関数を作ってcountが10以上の時は赤、0未満の時は青、それ以外は黒にしよう！
// clearButtonを押すとcountを0にする


import UIKit

class ViewController: UIViewController {
    
    // -TODO: ①minusButtonを定義する
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var clearButton: UIButton!
    @IBOutlet var countLabel: UILabel!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを角丸にする
        plusButton.layer.cornerRadius = 10
        minusButton.layer.cornerRadius = 10
        clearButton.layer.cornerRadius = 10
        
        print(countLabel.text ?? "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        count = 0
        countLabel.textColor = .black
    }
    
    /** plusButtonが押された時の処理
     countに1を足してchangeColor関数を呼び出す
     countLabeにcountを入れて表示
     countが20になったらEndViewControllerに画面遷移する
     */
    @IBAction func plusButtonTapped () {
        // countに1を足す
        count = count + 1
        
        // changeColor関数を呼び出す
        changeColor(count)
        
        // countが20以上の時に画面遷移させる
        if count >= 20 {
            //TODO: -  ②画面遷移させる
            performSegue(withIdentifier: "", sender: nil)
        }
        
        // countを表示させる
        countLabel.text = String(count)
    }
    
    /**
     minusButtonが押された時の処理
     countから1を引いてchangeColor関数を呼び出す
     countLabeにcountを入れて表示
     countが-10になったらEndViewControllerに画面遷移する
     */
    @IBAction func minusButtonTapped () {
        // countから1を引く
        count = count - 1
        
        // changeColor関数を呼び出す
        changeColor(count)
        
        // countが-10以下の時に画面遷移させる
        if count <= -10 {
            //TODO: -  ③画面遷移させる
            
        }
        
        // countを表示させる
        countLabel.text = String(count)
    }
    
    
    //TODO: -  ④clearButtonが押された時の処理
    /**
     clearButtonが押された時の処理
     countを0にしてchangeColor関数を呼び出す
     countLabelにcountを入れて表示
     */
    
    
    
    
    // テキストの色を変えるchangeColor関数
    // 引数はcount(int)で戻り値はなし
    // countが10以上の時は赤、0未満の時は青、それ以外は黒にする
    func changeColor(_ count :Int) {
        if count < 0 {
            // テキストの色を青にする
            countLabel.textColor = .blue
        } else if count >= 10 {
            //TODO: -  ⑤テキストの色を赤にする
            
        } else {
            // テキストの色を黒にする
            countLabel.textColor = .black
        }
    }
    
    
}

