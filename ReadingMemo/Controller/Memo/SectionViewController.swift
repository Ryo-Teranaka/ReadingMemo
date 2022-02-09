//
//  SectionViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/01.
//

import UIKit


class SectionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var sectionTableView: UITableView!
    
    var addBarButtonItem: UIBarButtonItem!      // 追加ボタン
    var editBarButtonItem: UIBarButtonItem!     // 編集ボタン

    override func viewDidLoad() {
        super.viewDidLoad()

        sectionTableView.register(UINib(nibName: "SectionCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //ナビゲーションバー変更
        navigationItem.title = "項目を選択する"
        
        addBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonTapped(_:)))
        editBarButtonItem = UIBarButtonItem(image: UIImage(named: "pen_button")!, style: .plain, target: self, action: #selector(editBarButtonTapped(_:)))

        // ナビゲーションバー にボタンを追加
        self.navigationItem.rightBarButtonItems = [addBarButtonItem,editBarButtonItem]
        
        self.tabBarController?.tabBar.isHidden = false
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
        print("【編集】ボタンが押された!")
    }
    
    @objc func addBarButtonTapped(_ sender: UIBarButtonItem) {
        // 別の画面に遷移
        performSegue(withIdentifier: "toAddSectionViewController", sender: nil)
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
