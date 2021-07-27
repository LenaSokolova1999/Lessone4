//
//  ViewController.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Public property

    let xOriginTextfield = 42
    let yOriginTextfield = 120
    let widthOriginTextfield = 300
    let heightOriginTextfield = 36

	// MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.childVC.delegate = self
        let elements = UIElements()
        elements.labelEmail.frame = CGRect(x: xOriginTextfield, y: yOriginTextfield, width: widthOriginTextfield, height: heightOriginTextfield)
        elements.labelEmail.text = "Email"
        elements.labelEmail.textColor = UIColor.systemPink
        elements.textFieldEmail.frame = CGRect(x: xOriginTextfield, y: 150, width: widthOriginTextfield, height: heightOriginTextfield)
        elements.textFieldEmail.placeholder = "Введите Email"
        elements.textFieldEmail.backgroundColor = UIColor.white
        elements.textFieldEmail.textColor = UIColor.darkGray
        elements.labelPassword.frame = CGRect(x: xOriginTextfield, y: 200, width: widthOriginTextfield, height: heightOriginTextfield)
        elements.labelPassword.text = "Пароль"
        elements.labelPassword.textColor = UIColor.systemPink
        elements.textFieldPassword.frame = CGRect(x: xOriginTextfield, y: 230, width: widthOriginTextfield, height: heightOriginTextfield)
        elements.textFieldPassword.isSecureTextEntry = true
        elements.textFieldPassword.placeholder = "Введите пароль"
        elements.textFieldPassword.backgroundColor = UIColor.white
        elements.textFieldPassword.textColor = UIColor.darkGray
        elements.button.frame = CGRect(x: xOriginTextfield, y: 310, width: widthOriginTextfield, height: heightOriginTextfield)
        elements.button.layer.cornerRadius = 10
        elements.button.backgroundColor = UIColor.systemPink
        elements.button.setTitle("Войти", for: .normal)
        elements.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(elements.labelEmail)
        self.view.addSubview(elements.textFieldEmail)
        self.view.addSubview(elements.labelPassword)
        self.view.addSubview(elements.textFieldPassword)
        self.view.addSubview(elements.button)
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


