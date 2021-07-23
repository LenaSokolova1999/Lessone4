//
//  HeaderName.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

final class HeaderName: UITableViewCell {

    // MARK: - Public properties

    @IBOutlet private weak var headerName: UILabel!

    // MARK: - Public metod

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(labelText: String) {
        headerName.text = labelText
    }
}
