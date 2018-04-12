//
//  TestTableViewCell.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/9/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    @IBOutlet weak var lbtext: UILabel!
    @IBOutlet weak var ivCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            lbtext.textColor = UIColor.white
        }else{
            lbtext.textColor = UIColor.black
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            self.backgroundColor = UIColor.blue
        }else{
             self.backgroundColor = UIColor.red
        }
    }
    
    var textItem: String?  {
        didSet {
            self.lbtext.text = textItem
        
        }
    }
    
    func testTran(tesT :String, image :UIImage) {
        self.lbtext.text = textItem
        ivCell.image = image
        
    }
    
}
