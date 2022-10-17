//
//  MainViewController.swift
//  NBDownloads
//
//  Created by Nithin Bhaktha on 17/10/22.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    class func makeInstance() -> MainViewController {
        let vc = UIStoryboard.main.instantiateViewController(withIdentifier: MainViewController.self)
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension UIStoryboard {
    
    static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.default())
    }
    
    func instantiateViewController<T>(withIdentifier identifier: T.Type) -> T where T: UIViewController {
        let className = String(describing: identifier)
        guard let vc =  self.instantiateViewController(withIdentifier: className) as? T else {
            fatalError("Cannot find controller with identifier \(className)")
        }
        return vc
    }
}

extension Bundle {
    static func `default`() -> Bundle {
        return Bundle(for: MainViewController.self)
    }
}
