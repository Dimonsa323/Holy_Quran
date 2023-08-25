//
//  OnboardingPageController.swift
//  Holy_Quran
//
//  Created by Дима Губеня on 23.08.2023.
//

import Foundation
import UIKit

class OnboardingPageController: UIPageViewController {
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        [PageContentViewController(pageState: .firstImageOnboarding),
         PageContentViewController(pageState: .secondImageOnboarding),
         PageContentViewController(pageState: .thirdImageOnboarding)]
    }()
    
    init() {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        dataSource = self
        delegate = self
            view.backgroundColor = .systemBackground
      
        setViewControllers([orderedViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
}

extension OnboardingPageController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
}
