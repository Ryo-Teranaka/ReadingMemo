//
//  SectionViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/01.
//

import UIKit

class SectionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var sectionTableView: UITableView!

    var settingBarButtonItem: UIBarButtonItem!      // 設定ボタン
    var editBarButtonItem: UIBarButtonItem!     // 編集ボタン

    override func viewDidLoad() {
        super.viewDidLoad()

        // セクションテーブルの登録
        sectionTableView.register(UINib(nibName: "SectionCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
        // UIButtonを生成する
        let plusButton = UIButton()
        
        self.view.addSubview(plusButton)
        
        // ボタンを押した時に実行するメソッドを指定
        plusButton.addTarget(self, action: #selector(addNewSection(_:)), for: UIControl.Event.touchUpInside)

        // 必ずfalseにする
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        // tintColorを黒にする
        plusButton.tintColor = .white
        // グレーっぽくする
        plusButton.backgroundColor = .blue
        // 正円にする
        plusButton.layer.cornerRadius = 25
        // plustButtonのImageをplus（+）に設定する
        plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
        // ViewにplusButtonを設置する（必ず制約を設定する前に記述する）
        self.view.addSubview(plusButton)

        // 以下のコードから制約を設定している
        // plustButtonの下端をViewの下端から-70pt
        plusButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -70).isActive = true
        // plustButtonの右端をViewの右端から-40pt
        plusButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40).isActive = true
        // plustButtonの幅を50にする
        plusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        // plusButtonの高さを50にする
        plusButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //ナビゲーションバー変更
        navigationItem.title = "項目を選択する"
        
        //ナビゲーションバー設定
        editBarButtonItem = UIBarButtonItem(image: UIImage(named: "pen_button")!, style: .plain, target: self, action: #selector(editBarButtonTapped(_:)))
        //ナビゲーションバー設定
        settingBarButtonItem = UIBarButtonItem(image: UIImage(named: "gear")!, style: .plain, target: self, action: #selector(settingBarButtonTapped(_:)))
        //ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItem = editBarButtonItem
        //ナビゲーションバー にボタンを追加
        self.navigationItem.leftBarButtonItem = settingBarButtonItem
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! SectionTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
        // セルの選択を解除
        tableView.deselectRow(at: indexPath, animated: true)
 
        // 別の画面に遷移
        performSegue(withIdentifier: "toBookViewController", sender: nil)
    }
    
    // "編集"ボタンが押された時の処理
    @objc func editBarButtonTapped(_ sender: UIBarButtonItem) {
        print("編集ボタンが押下されました")
    }

    @objc func settingBarButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toSettingTableViewController", sender: nil)
    }

    // プラスボタンが押された時の処理
    @objc func addNewSection(_ sender: UIBarButtonItem) {

        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let popupView: PopupViewController = storyBoard.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        popupView.modalPresentationStyle = .overFullScreen
        popupView.modalTransitionStyle = .crossDissolve

        self.present(popupView, animated: false, completion: nil)
        
    }
    

}
