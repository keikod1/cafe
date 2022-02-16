//
//  NameCafeCell.swift
//  cafe
//
//  Created by my macbook on 15/2/22.
//

import Foundation
import SnapKit
import UIKit

class NameCafeCell: UITableViewCell{
    lazy var imageCafe: UIImageView = {
        let view = UIImageView()
        
        return view
    }()
    lazy var nameCafe: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.textColor = .white
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.text = ""
        return view
    }()
    lazy var adressCafe: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        view.textColor = .white
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.text = ""
        return view
    }()
    
    
    override func layoutSubviews() {
        addSubview(imageCafe)
        imageCafe.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
            make.height.equalToSuperview().multipliedBy(0.7)
            make.width.equalToSuperview().multipliedBy(0.4)
        }
        addSubview(nameCafe)
        nameCafe.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalTo(imageCafe.snp.right).offset(16)
        }
        addSubview(adressCafe)
        adressCafe.snp.makeConstraints { make in
            make.top.equalTo(nameCafe.snp.bottom).offset(10)
            make.left.equalTo(imageCafe.snp.right).offset(16)
            make.width.equalTo(frame.width / 2)
        }
        
    }
        func fill(model: CafeModule){
            self.nameCafe.text = model.name
            self.adressCafe.text = model.adress
            self.imageCafe.image = UIImage(named:   model.image!)
        }
    }
    

