//
//  CheckCell.swift
//  LessoneUI_4v2.0
//
//  Created by Andrey Korotkov on 12.07.2021.
//

import UIKit

final class CheckCell: UITableViewCell {

    // MARK: - Public properties

    @IBOutlet var product: UILabel!

    @IBOutlet var price: UILabel!

    var switchPrice = HomePage()

    // MARK: - Public metod

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(label: String, title: String) {
        product.text = label
        price.text = title
    }
    
}
