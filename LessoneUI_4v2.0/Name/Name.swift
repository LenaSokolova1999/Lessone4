//
//  Name.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

final class Name: UITableViewCell {

    @IBOutlet private var textField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(TextField: String) {
        textField.placeholder = TextField
    }
}
