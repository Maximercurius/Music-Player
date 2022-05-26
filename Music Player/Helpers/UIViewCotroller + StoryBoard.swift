//
//  UIViewCotroller + StoryBoard.swift
//  Music Player
//
//  Created by Makarov_Maxim on 26.05.2022.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadFromStoryBoard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No initial viewController in \(name) storyBoard!")
        }
    }
}
