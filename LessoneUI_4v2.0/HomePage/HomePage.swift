//
//  HomePage.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 08.07.2021.
//

import UIKit

final class HomePage: UIViewController {

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "HeaderName", bundle: nil), forCellReuseIdentifier: "HeaderName")
        tableView.register(UINib(nibName: "Name", bundle: nil), forCellReuseIdentifier: "Name")
        tableView.register(UINib(nibName: "Switch", bundle: nil), forCellReuseIdentifier: "Switch")
        tableView.register(UINib(nibName: "ShowCheck", bundle: nil), forCellReuseIdentifier: "ShowCheck")
        tableView.keyboardDismissMode = .onDrag
        self.switchOn()
    }

    // MARK: - Public properties

    @IBOutlet var tableView: UITableView!

    var on = "0p"

    var swit = Switch()

    var switchCheck: Bool {
        return ((swit.sw?.isOn) != nil)
    }

    enum CellType {
        case headerName(String)
        case name(placeholder: String)
        case switchCell(String)
        case showCheck(title: String)
    }

    // MARK: - Private properties

    private let model: [CellType] = [.headerName("Имя"), .name(placeholder: "Введите имя"), .headerName("Количество персон"), .name(placeholder: "Введите количество персон"), .headerName("Номер стола"), .name(placeholder: "Введите номер стола"), .switchCell("Бронь зала"), .switchCell("Зал для курения"), .switchCell("VIP комната"), .showCheck(title: "Показать чек")]

    // MARK: - Public metod

    func switchOn() {
        on = switchCheck ? "100p" : "0p"
    }

    // MARK: - Initializers

    //init() {
        //super.init(nibName: nil, bundle: nil)
    //}

    //required init?(coder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
    //}

}

// MARK: - Extension UITableViewDataSource

extension HomePage: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        switch model[index] {

        case .headerName(let title):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderName", for: indexPath) as? HeaderName else { return UITableViewCell() }
            cell.configure(labelText: title)
            cell.selectionStyle = .none
            return cell

        case .name(let title):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Name", for: indexPath) as? Name else { return UITableViewCell() }
            cell.configure(TextField: title)
            cell.selectionStyle = .none
            return cell

        case .switchCell(let title):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Switch", for: indexPath) as? Switch else { return UITableViewCell() }
            cell.configure(labelText: title)
            cell.selectionStyle = .none
            return cell

        case .showCheck( _):
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShowCheck", for: indexPath) as? ShowCheck else { return UITableViewCell() }
            cell.configure(title: title ?? "")
            cell.selectionStyle = .none
            cell.delegate = self
            return cell
        }
    }
}

// MARK: - Extension UITableViewDelegate

extension HomePage: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}

// MARK: - Extension ShowCheckDelegate

extension HomePage: ShowCheckDelegate {

    func didTapButton() {
        print("Button Clicked")
        super.viewDidAppear(true)
        self.title = "Показать чек"
        let gameAlert = UIAlertController(title: "Показать чек?", message: nil, preferredStyle: .actionSheet)
        gameAlert.addAction(UIAlertAction(title: "Да", style: .default) { action in
            let vc = PageCheck(nibName: "PageCheck", bundle: nil)
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        })
        gameAlert.addAction(UIAlertAction(title: "Нет", style: .default) { action in })
        present(gameAlert, animated: true, completion: nil)
    }
}
