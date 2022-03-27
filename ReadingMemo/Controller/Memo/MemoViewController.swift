//
//  MemoViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/07.
//

import UIKit

class MemoViewController: UIViewController{
    
    var editBarButtonItem: UIBarButtonItem!     //編集ボタン

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var addmemoButton: UIButton!
    @IBOutlet weak var sectionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Delegate設定
        //sectionPickerView.delegate = self
        //sectionPickerView.dataSource = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        //ナビゲーションバー変更
        navigationItem.title = "本のタイトル"
        
        editBarButtonItem = UIBarButtonItem(image: UIImage(named: "pen_button")!, style: .plain, target: self, action: #selector(editBarButtonTapped(_:)))

        // ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItem = editBarButtonItem

        self.tabBarController?.tabBar.isHidden = true
    }
    
    // "編集"ボタンが押された時の処理
    @objc func editBarButtonTapped(_ sender: UIBarButtonItem) {
        print("【編集】ボタンが押された!")
    }

}
