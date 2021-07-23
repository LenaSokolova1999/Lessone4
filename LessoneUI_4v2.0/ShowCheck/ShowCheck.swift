//
//  ShowCheck.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

// MARK: - Protocol

protocol ShowCheckDelegate: AnyObject {
    func didTapButton()
}

final class ShowCheck: UITableViewCell {

    // MARK: - Public properties

    weak var delegate: ShowCheckDelegate?

    static let identifier = "ShowCheck"

    @IBOutlet var button: UIButton!

    // MARK: - Public metod

    @IBAction func check(_ sender:UIButton!) {
        self.delegate?.didTapButton()
	}

    static func nib() -> UINib {
        return UINib(nibName: "ShowCheck", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(title: String) {

    }
}
