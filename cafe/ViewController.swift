//
//  ViewController.swift
//  cafe
//
//  Created by my macbook on 15/2/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private lazy var cafeCells: UILabel = {
        let view = UILabel()
        view.text = "Cписок кафе и ресторанов Бишкека"
        view.numberOfLines = 0
        view.textColor = .white
        view.textAlignment = .center
        view.backgroundColor = .darkGray
        view.font = .systemFont(ofSize: 25, weight: .regular)
        return view
    }()

    private lazy var cafeTableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .gray
        view.dataSource = self
        view.delegate = self
        view.register(NameCafeCell.self, forCellReuseIdentifier: "NameCafeCell")
        return view
    }()

    private var cafeCell: [CafeModule] = [
        CafeModule(name: "Panda", adress: "Телефон: +996 (312) 51-22-60 \n г. Бишкек, 3 м-он, ул. Жукеева Пудовкина, 75/1", image: "pandacafe"),
        CafeModule(name: "Mindal", adress: "Телефон: +996 (312) 62-04-53 \n г. Бишкек, ул. Шопокова , 126", image: "mindalcafe"),
        CafeModule(name: "Paul", adress: "Телефон: +996 (312) 51-22-60 \n г. Бишкек, 3 м-он, ул. Жукеева Пудовкина, 75/1", image: "paulcafe"),
        CafeModule(name: "Mustafa", adress: "Телефон: +996 (312) 62-04-53 \n г. Бишкек, ул. Шопокова , 126", image: "mustafacafe"),
        CafeModule(name: "Panda", adress: "Телефон: +996 (312) 51-22-60 \n г. Бишкек, 3 м-он, ул. Жукеева Пудовкина, 75/1", image: "pandacafe"),
        CafeModule(name: "Mindal", adress: "Телефон: +996 (312) 62-04-53 \n г. Бишкек, ул. Шопокова , 126", image: "mindalcafe"),
        CafeModule(name: "Paul", adress: "Телефон: +996 (312) 51-22-60 \n г. Бишкек, 3 м-он, ул. Жукеева Пудовкина, 75/1", image: "paulcafe"),
        CafeModule(name: "Mustafa", adress: "Телефон: +996 (312) 62-04-53 \n г. Бишкек, ул. Шопокова , 126", image: "mustafacafe")]
    private var saleCafe: [CafeModule] = [
        CafeModule(image: "sale1"),
        CafeModule(image: "sale2"),
        CafeModule(image: "sale3"),
        CafeModule(image: "sale4"),
        CafeModule(image: "sale1"),
        CafeModule(image: "sale2"),
        CafeModule(image: "sale3"),
        CafeModule(image: "sale4")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(cafeCells)
        cafeCells.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.height.equalTo(view.frame.height / 10)
            make.width.equalToSuperview()
        }
        view.addSubview(cafeTableView)
        cafeTableView.snp.makeConstraints { make in
            make.top.equalTo(cafeCells.snp.bottom)
            make.left.bottom.right.equalToSuperview()
        }
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {

    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return cafeCell.count
           }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let index = indexPath.row
           if (((index % 3)  - 2 ) != 0) {
           let cell = NameCafeCell()
           let model = cafeCell[index]
           cell.fill(model: model)
           return cell
           }else {
           let cell = SaleCell()
           let model = saleCafe[index]
           cell.fill(model: model)
           return cell
               
           }
       }
      
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           let index = indexPath.row
           if (((index % 3) - 2) != 0) {
           return 120
           }else{
            return 150
           }
       }
    
}
 

