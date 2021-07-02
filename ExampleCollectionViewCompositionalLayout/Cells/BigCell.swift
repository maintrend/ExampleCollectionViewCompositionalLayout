//
//  BigCell.swift
//  ExampleCollectionViewCompositionalLayout
//
//  Created by talgat on 7/2/21.
//

import Foundation
import UIKit

class BigCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "BigCell"
    
    let anotherImageView = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.purple
        setupConstraints()
        
        self.layer.cornerRadius = 4
        self.clipsToBounds = true
    }
    
    func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemOrange
        label.frame = self.bounds
        backgroundColor = .systemGreen
    }
    
    func configure(with intValue: Int) {
        label.text = String(intValue)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



