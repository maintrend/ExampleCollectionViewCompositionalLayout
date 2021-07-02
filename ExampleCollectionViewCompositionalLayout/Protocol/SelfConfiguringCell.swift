//
//  SelfConfiguringCell.swift
//  ExampleCollectionViewCompositionalLayout
//
//  Created by talgat on 7/2/21.
//

import Foundation
import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with intValue: Int)
}
