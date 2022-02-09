//
//  AddSectionViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/06.
//

import UIKit

class AddSectionViewController: UIViewController {

    var addBarButtonItem: UIBarButtonItem! // 追加ナビボタン

    override func viewDidLoad() {
        super.viewDidLoad()
        //ナビゲーションバー変更
        navigationItem.title = "項目を追加する"
        
        //tabBarを非表示に
        tabBarController?.tabBar.isHidden = true
        
        //初期設定パターン① (アイコンを使うパターン)
        addBarButtonItem = UIBarButtonItem(title: "追加", style: .done, target: self, action: nil)

        // ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItem = addBarButtonItem
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
