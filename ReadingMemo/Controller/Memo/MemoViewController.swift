//
//  MemoViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/07.
//

import UIKit
import DropDown

class MemoViewController: UIViewController{
    
    var editBarButtonItem: UIBarButtonItem!     //編集ボタン

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var addmemoButton: UIButton!
    @IBOutlet weak var sectionLabel: UILabel!
    
    let sectionList = [
        "第0章","第1章","第2章","第3章","第4章","第5章","第6章",
        "第7章","第8章","第9章","第10章","第11章","第12章","第13章"
    ]
    
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

    // UIPickerViewの列の数
    /*
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    */

    // UIPickerViewの行数、リストの数
    /*
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sectionList.count
    }
     */

    // UIPickerViewの最初の表示
    /*
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return sectionList[row]
    }
     */

}
