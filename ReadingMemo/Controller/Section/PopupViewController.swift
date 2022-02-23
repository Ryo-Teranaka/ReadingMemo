//
//  PopupViewController.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/19.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var regestButton: UIButton!
    @IBOutlet weak var baseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseView.layer.cornerRadius = 8.0
        
        // 1.角丸設定
        cancelButton.layer.cornerRadius = 10
        regestButton.layer.cornerRadius = 10
        // 2.影の設定
        // 影の濃さ
        cancelButton.layer.shadowOpacity = 0.7
        regestButton.layer.shadowOpacity = 0.7
        // 影のぼかしの大きさ
        cancelButton.layer.shadowRadius = 3
        regestButton.layer.shadowRadius = 3
        // 影の色
        cancelButton.layer.shadowColor = UIColor.black.cgColor
        regestButton.layer.shadowColor = UIColor.black.cgColor
        // 影の方向（width=右方向、height=下方向）
        cancelButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        regestButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        
        regestButton.isEnabled = false
        
        self.nameTextField.becomeFirstResponder()
        
        let tapGR: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGR.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tapGR)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction func cancelButtonClick(_ sender: UIButton) {
        //self.removeFromParent()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func textFieldChanged(_ sender: Any) {
        if nameTextField.text == "" {
            regestButton.isEnabled = false
        } else {
            regestButton.isEnabled = true
        }
    }
    
    @IBAction func regestButtonClick(_ sender: Any) {
        
    }
    
}
