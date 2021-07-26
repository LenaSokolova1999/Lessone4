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
    var switchPrice = ServicesPage()

    // MARK: - Public metod

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(serviceName: String, price: String) {
        product.text = serviceName
        price.text = price
    }
    
}
