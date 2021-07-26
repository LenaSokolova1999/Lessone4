//
//  PageCheck.swift
//  LessoneUI_4v2.0
//
//  Created by Mac Mini 2018 on 12.07.2021.
//

import UIKit

final class PageCheck: UIViewController {

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine
        tableView.register(UINib(nibName: "CheckCell", bundle: nil), forCellReuseIdentifier: "CheckCell")
        tableView.register(UINib(nibName: "PriceCell", bundle: nil), forCellReuseIdentifier: "PriceCell")
        self.inits()
    }

	// MARK: - Public property

    @IBOutlet var tableView: UITableView!
    var switchPrice = ServicesPage()
    var modelArray = [ModelWithServicesAndPrice] ()

    // MARK: - Public metod

    public func inits() {
        let model1 = ModelWithServicesAndPrice(serviceName: "Бронь зала", price: switchPrice.on)
        let model2 = ModelWithServicesAndPrice(serviceName: "Зал для курения", price: switchPrice.on)
        let model3 = ModelWithServicesAndPrice(serviceName: "VIP комната", price: switchPrice.on)

        modelArray.append(model1)
        modelArray.append(model2)
        modelArray.append(model3)
    }

    // MARK: - Initializers

	/*
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */

	// MARK: - Navigation

    /*
	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    	// Get the new view controller using segue.destination.
    	// Pass the selected object to the new view controller.
	}
	*/
}

// MARK: - Extension UITableViewDataSource

extension PageCheck: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        _ = indexPath.row
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CheckCell", for: indexPath) as? CheckCell else { return .init() }
        cell.configure(label: modelArray[indexPath.row].serviceName, title: modelArray[indexPath.row].price)
        return cell
	}
}

// MARK: - Extension UITableViewDelegate

extension PageCheck: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print(indexPath)
	}
}
