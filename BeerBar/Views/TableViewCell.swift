//
//  TableViewCell.swift
//  BeerBar
//
//  Created by Robert Kotrutsa on 30.01.2024.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var beerNameLabel: UILabel!
    
    @IBOutlet weak var beerLeftLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
