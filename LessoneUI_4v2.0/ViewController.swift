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
        var object = Object()
        object.labelEmail.frame = CGRect(x: 42, y: 120, width: 300, height: 36)
        object.labelEmail.text = "Email"
        object.labelEmail.textColor = UIColor.systemPink
        object.textFieldEmail.frame = CGRect(x: 42, y: 150, width: 300, height: 36)
        object.textFieldEmail.placeholder = "Введите Email"
        object.textFieldEmail.backgroundColor = UIColor.white
        object.textFieldEmail.textColor = UIColor.darkGray
        object.labelPassword.frame = CGRect(x: 42, y: 200, width: 300, height: 36)
        object.labelPassword.text = "Пароль"
        object.labelPassword.textColor = UIColor.systemPink
        object.textFieldPassword.frame = CGRect(x: 42, y: 230, width: 300, height: 36)
        object.textFieldPassword.isSecureTextEntry = true
        object.textFieldPassword.placeholder = "Введите пароль"
        object.textFieldPassword.backgroundColor = UIColor.white
        object.textFieldPassword.textColor = UIColor.darkGray
        object.button.frame = CGRect(x: 62, y: 310, width: 260, height: 36)
        object.button.layer.cornerRadius = 10
        object.button.backgroundColor = UIColor.systemPink
        object.button.setTitle("Войти", for: .normal)
        object.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(object.labelEmail)
        self.view.addSubview(object.textFieldEmail)
        self.view.addSubview(object.labelPassword)
        self.view.addSubview(object.textFieldPassword)
        self.view.addSubview(object.button)
        self.view.addBackground()
    }

    // MARK: - Public metod

    @objc func buttonAction(sender: UIButton!) {
        print("Button Clicked")
        let vc = ServicesPage(nibName: "ServicesPage", bundle: nil)
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


