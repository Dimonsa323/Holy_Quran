//
//  PageViewController .swift
//  Holy_Quran
//
//  Created by Дима Губеня on 23.08.2023.
//

import Foundation
import UIKit
import SnapKit

class PageContentViewController: UIViewController {
    private let pageState: OnboardingPageState
    
    private let contentImageView: UIImageView = {
        let obj = UIImageView()
        
        return obj
    }()
    
    init(pageState: OnboardingPageState) {
        self.pageState = pageState
        contentImageView.image = UIImage(named: pageState.onboardingImage)
        super.init(nibName: nil, bundle: nil)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        view.addSubview(contentImageView)
        
        contentImageView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
}

