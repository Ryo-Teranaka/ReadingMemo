//
//  BookTableViewCell.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/03.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var updateDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bookImageView.image = UIImage(systemName: "swift")
        bookNameLabel.text = "Swift"
        updateDateLabel.text = "2021/12/24"
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
