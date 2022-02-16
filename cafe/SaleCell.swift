//
//  SaleCell.swift
//  cafe
//
//  Created by my macbook on 15/2/22.
//

import Foundation

import UIKit
import SnapKit

class SaleCell: UITableViewCell {
    lazy var imageSale: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    
    
    override func layoutSubviews() {
        backgroundColor = .darkGray
        addSubview(imageSale)
        imageSale.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
       
        
    }
        func fill(model: CafeModule){
            
            self.imageSale.image = UIImage(named:  model.image!)
        }
}
