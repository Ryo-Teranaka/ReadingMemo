//
//  SectionCell.swift
//  ReadingMemo
//
//  Created by TERANAKA RYO on 2022/02/01.
//

import UIKit

class SectionTableViewCell: UITableViewCell {

    @IBOutlet weak var folderImg: UIImageView!
    @IBOutlet weak var sectionLbl: UILabel!
    @IBOutlet weak var countLbl: UILabel!
    @IBOutlet weak var shiftLbl: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
