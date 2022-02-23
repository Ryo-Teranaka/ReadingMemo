//
//  BookViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/02.
//

import UIKit

class BookViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var bookTableView: UITableView!
    
    var addBarButtonItem: UIBarButtonItem!      // 追加ボタン
    var editBarButtonItem: UIBarButtonItem!     // 編集ボタン

    override func viewDidLoad() {
        super.viewDidLoad()

        //ナビゲーションバー変更
        navigationItem.title = "本を選択する"
        
        //tabBarを非表示に
        tabBarController?.tabBar.isHidden = true
        
        addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonTapped(_:)))
        editBarButtonItem = UIBarButtonItem(image: UIImage(named: "pen_button")!, style: .plain, target: self, action: #selector(editBarButtonTapped(_:)))

        // ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItems = [addBarButtonItem,editBarButtonItem]

        bookTableView.register(UINib(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! BookTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // セルの選択を解除
        tableView.deselectRow(at: indexPath, animated: true)
 
        // 別の画面に遷移
        performSegue(withIdentifier: "toMemoViewController", sender: nil)
    }

    
    // "編集"ボタンが押された時の処理
    @objc func editBarButtonTapped(_ sender: UIBarButtonItem) {
        print("【編集】ボタンが押された!")
    }
    
    @objc func addBarButtonTapped(_ sender: UIBarButtonItem) {
        // 別の画面に遷移
        performSegue(withIdentifier: "toAddBookViewController", sender: nil)
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
