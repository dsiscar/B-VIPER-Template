//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Presenter: class {
  
}

class ___FILEBASENAMEASIDENTIFIER___DefaultPresenter: ___FILEBASENAMEASIDENTIFIER___Presenter {
  
  fileprivate let interactor: ___FILEBASENAMEASIDENTIFIER___Interactor
  fileprivate let router: ___FILEBASENAMEASIDENTIFIER___Router
  fileprivate weak var view: ___FILEBASENAMEASIDENTIFIER___View?

  required init(interactor: ___FILEBASENAMEASIDENTIFIER___Interactor, router: ___FILEBASENAMEASIDENTIFIER___Router, view: ___FILEBASENAMEASIDENTIFIER___View) {
    self.interactor = interactor
    self.router = router
    self.view = view
  }
}
