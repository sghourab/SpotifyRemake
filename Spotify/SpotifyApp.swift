//
//  SpotifyApp.swift
//  Spotify
//
//  Created by Summer Crow on 2024-05-03.
//

import SwiftUI
import SwiftfulRouting

@main
struct SpotifyApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                SpotifyHomeView()
            }
            
        }
    }
}


extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}


