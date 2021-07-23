//
//  ViewController.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.childVC.delegate = self
        labelEmail.frame = CGRect(x: 42, y: 120, width: 300, height: 36)
        labelEmail.text = "Email"
        labelEmail.textColor = UIColor.systemPink
        textFieldEmail.frame = CGRect(x: 42, y: 150, width: 300, height: 36)
        textFieldEmail.placeholder = "Введите Email"
        textFieldEmail.backgroundColor = UIColor.white
        textFieldEmail.textColor = UIColor.darkGray
        labelPassword.frame = CGRect(x: 42, y: 200, width: 300, height: 36)
        labelPassword.text = "Пароль"
        labelPassword.textColor = UIColor.systemPink
        textFieldPassword.frame = CGRect(x: 42, y: 230, width: 300, height: 36)
        textFieldPassword.isSecureTextEntry = true
        textFieldPassword.placeholder = "Введите пароль"
        textFieldPassword.backgroundColor = UIColor.white
        textFieldPassword.textColor = UIColor.darkGray
        button.frame = CGRect(x: 62, y: 310, width: 260, height: 36)
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.systemPink
        button.setTitle("Войти", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(labelEmail)
        self.view.addSubview(textFieldEmail)
        self.view.addSubview(labelPassword)
        self.view.addSubview(textFieldPassword)
        self.view.addSubview(button)
        self.view.addBackground()
    }

    // MARK: - Public properties

    let labelEmail = UILabel(frame: CGRect.init())
    let textFieldEmail = UITextField()
    let labelPassword = UILabel(frame: CGRect.init())
    let textFieldPassword = UITextField()
    let button = UIButton()

    // MARK: - Public metod

    @objc func buttonAction(sender: UIButton!) {
        print("Button Clicked")
        let vc = HomePage(nibName: "HomePage", bundle: nil)
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

// MARK: - Extension UIView

extension UIView {

    func addBackground(imageName: String = "Image", contentMode: UIView.ContentMode = .scaleToFill) {

        let backgroundImageView = UIImageView(frame: UIScreen.main.bounds)
        backgroundImageView.image = UIImage(named: imageName)
        backgroundImageView.contentMode = contentMode
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(backgroundImageView)
        sendSubviewToBack(backgroundImageView)

        let leadingConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0.0)
        let trailingConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0.0)
        let topConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0)
        let bottomConstraint = NSLayoutConstraint(item: backgroundImageView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0)

        NSLayoutConstraint.activate([leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
    }
}


