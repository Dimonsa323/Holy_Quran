//
//  OnboardingPageState.swift
//  Holy_Quran
//
//  Created by Дима Губеня on 23.08.2023.
//

import Foundation
import UIKit

enum OnboardingPageState {
    case firstImageOnboarding
    case secondImageOnboarding
    case thirdImageOnboarding
    
    var onboardingImage: UIImage? {
        switch self {
        case .firstImageOnboarding:
            return UIImage(named: "iPhoneX")
        case .secondImageOnboarding:
            return UIImage(named: "iPhoneX_2")
        case .thirdImageOnboarding:
            return UIImage(named: "iPhoneX_3")
        }
    }
}
