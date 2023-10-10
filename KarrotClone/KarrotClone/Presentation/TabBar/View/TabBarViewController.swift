//
//  TabBarViewController.swift
//  HumanscapeShoppingMall
//
//  Created by DOYEON LEE on 2023/05/30.
//

import Foundation
import UIKit

class TabbarViewController: UITabBarController {
    
    
    var defaultIndex = 0 {
        didSet {
            self.selectedIndex = defaultIndex
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.selectedIndex = defaultIndex
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 첫번째 탭바 설정
        let firstNavigationController = UINavigationController()
        // 보여질 뷰
        let firstTabController = HomeViewController()
        firstNavigationController.addChild(firstTabController)
        // navigationBar LargeTitle 설정
        firstNavigationController.navigationBar.prefersLargeTitles = false
        // TabBarItem 설정
        firstTabController.tabBarItem = UITabBarItem(
            title: "홈",
            image: UIImage(systemName: "house"),
            tag: 1
        )
        
        // 두번째 탭바 설정
        let secondNavigationController = UINavigationController()
        let secondTabController = UIViewController()
        secondNavigationController.addChild(secondTabController)
        secondTabController.title = "내정보"
        secondNavigationController.navigationBar.prefersLargeTitles = true
        secondNavigationController.tabBarItem = UITabBarItem(
            title: "동네생활",
            image: UIImage(systemName: "doc.text"),
            tag: 2
        )
        
        // 세 번째 탭바 설정
        let thirdNavigationController = UINavigationController()
        let thirdTabController = UIViewController()
        thirdNavigationController.addChild(thirdTabController)
        thirdTabController.title = "세 번째 탭"
        thirdNavigationController.navigationBar.prefersLargeTitles = true
        thirdNavigationController.tabBarItem = UITabBarItem(
            title: "내근처",
            image: UIImage(systemName: "mappin.and.ellipse"),
            tag: 3
        )

        // 네 번째 탭바 설정
        let fourthNavigationController = UINavigationController()
        let fourthTabController = UIViewController()
        fourthNavigationController.addChild(fourthTabController)
        fourthTabController.title = "네 번째 탭"
        fourthNavigationController.navigationBar.prefersLargeTitles = true
        fourthNavigationController.tabBarItem = UITabBarItem(
            title: "채팅",
            image: UIImage(systemName: "message"),
            tag: 4
        )

        // 다섯 번째 탭바 설정
        let fifthNavigationController = UINavigationController()
        let fifthTabController = UIViewController()
        fifthNavigationController.addChild(fifthTabController)
        fifthTabController.title = "다섯 번째 탭"
        fifthNavigationController.navigationBar.prefersLargeTitles = true
        fifthNavigationController.tabBarItem = UITabBarItem(
            title: "나의당근",
            image: UIImage(systemName: "person"),
            tag: 5
        )

        let viewControllers = [firstTabController, secondNavigationController, thirdNavigationController, fourthNavigationController, fifthNavigationController]
        self.setViewControllers(viewControllers, animated: true) 
    }
    
    
}
