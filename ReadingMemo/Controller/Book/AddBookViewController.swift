//
//  AddBookViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/07.
//

import UIKit

class AddBookViewController: UIViewController {

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    
    var addBarButtonItem: UIBarButtonItem! // 追加ナビボタン
    var settingBarButtonItem: UIBarButtonItem! // 設定遷移ナビボタン

    override func viewDidLoad() {
        super.viewDidLoad()
        //ナビゲーションバー変更
        navigationItem.title = "本を追加"
        
        //tabBarを非表示に
        tabBarController?.tabBar.isHidden = true
        
        //初期設定パターン① (アイコンを使うパターン)
        addBarButtonItem = UIBarButtonItem(title: "追加する", style: .done, target: self, action: #selector(addBarButtonTapped(_:)))

        // ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItem = addBarButtonItem
    }
    
    //本画像がタップ
    @IBAction func tapBookImgaView(_ sender: Any) {
        print("OK")
    }
    
    // 追加ボタンが押下
    @objc func addBarButtonTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "登録失敗", message: "一文字以上入力してください。", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
        // 別の画面に遷移
        //performSegue(withIdentifier: "toAddBookViewController", sender: nil)
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
