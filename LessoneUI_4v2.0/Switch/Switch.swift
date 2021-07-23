//
//  Switch.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

final class Switch: UITableViewCell {

    // MARK: - Public properties

    @IBOutlet private weak var switchText: UILabel!

    @IBOutlet public var sw: UISwitch!

    // MARK: - Public metod

    func configure(labelText: String) {
        switchText.text = labelText
    }
}
