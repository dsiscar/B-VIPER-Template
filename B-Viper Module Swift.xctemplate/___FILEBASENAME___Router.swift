//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Swinject

protocol ___FILEBASENAMEASIDENTIFIER___Router {
  /// func navigateToNextModule()
}

class ___FILEBASENAMEASIDENTIFIER___DefaultRouter: ___FILEBASENAMEASIDENTIFIER___Router {
  
  weak var viewController: UIViewController?
  
  init (viewController: UIViewController) {
    self.viewController = viewController
  }
  
  // Example on how to call your next module
  // fileprivate func nextModuleBuilder() -> NextModuleBuilder? {
  //   return Container.sharedContainer.resolve(NextModuleBuilder.self)
  // }
  
  // func navigateToNextModule() {
  //   if let nextModuleVC = self.nextModuleBuilder()?.buildNextModule() {
  //     let navController = UINavigationController(rootViewController: nextModuleVC)
  //     self.viewController?.present(navController, animated: true, completion: nil)
  //   }
  // }
}
