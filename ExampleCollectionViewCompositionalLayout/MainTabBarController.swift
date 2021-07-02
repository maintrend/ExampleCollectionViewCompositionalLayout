//
//  MainTabBarController.swift
//  ExampleCollectionViewCompositionalLayout
//
//  Created by talgat on 7/2/21.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let flowViewController = FlowViewController()
        let compositionalViewController = CompositionalViewController()
        let advancedViewController = AdvancedViewController()
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldConfig)!
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldConfig)!
        let carImage = UIImage(systemName: "car", withConfiguration: boldConfig)!
        
        viewControllers = [
            generateNavigationController(rootViewController: advancedViewController, title: "Advanced", image: carImage),
            generateNavigationController(rootViewController: compositionalViewController, title: "Compositional", image: peopleImage),
           generateNavigationController(rootViewController: flowViewController, title: "Flow", image: convImage)
           
            
            
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
    
}
