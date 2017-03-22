//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Swinject

protocol ___FILEBASENAMEASIDENTIFIER___Builder {
  func build___FILEBASENAMEASIDENTIFIER___Module() -> UIViewController?
}

/// To use this builder you need to have an extension of swinject Container
/// and register your builder and services in it.
/// like 
/*
 extension Container {
 
 // Shared container
 // We are still looking at the best way to achieve this with Swinject
  static let sharedContainer: Container = {
    let c = Container()
 
    c.register(CustomService.self) { _ in ApiCustomService()}
 
    c.register(___FILEBASENAMEASIDENTIFIER___Builder.self) { _ in ___FILEBASENAMEASIDENTIFIER___SwiftInjectBuilder()}
 
    return c
  }() 
 }
*/

struct ___FILEBASENAMEASIDENTIFIER___SwiftInjectBuilder: ___FILEBASENAMEASIDENTIFIER___Builder {
  
  func build___FILEBASENAMEASIDENTIFIER___Module() -> UIViewController? {
    registerView()
    registerInteractor()
    registerPresenter()
    registerRouter()
    
    return Container.sharedContainer.resolve(___FILEBASENAMEASIDENTIFIER___View.self) as? UIViewController
  }
  
  fileprivate func registerView() {
    let viewDescription = Container.sharedContainer.register(___FILEBASENAMEASIDENTIFIER___View.self) { _ in
      //init from storyboard here like :
      //___FILEBASENAMEASIDENTIFIER___ViewController.instantiate(fromAppStoryboard: .main)
       ___FILEBASENAMEASIDENTIFIER___ViewController()
    }
    viewDescription.initCompleted { r, v in
      //this will only work with a xib named ___FILEBASENAMEASIDENTIFIER___ViewController.xib
      if let view = v as?  ___FILEBASENAMEASIDENTIFIER___ViewController {
        view.presenter = r.resolve(___FILEBASENAMEASIDENTIFIER___Presenter.self)
      }
    }
  }
  
  fileprivate func registerInteractor() {
    Container.sharedContainer.register(___FILEBASENAMEASIDENTIFIER___Interactor.self) { _ in
       ___FILEBASENAMEASIDENTIFIER___DefaultInteractor(/*resolve your custom service here*/)
    }
  }
  
  fileprivate func registerPresenter() {
    Container.sharedContainer.register(___FILEBASENAMEASIDENTIFIER___Presenter.self) { c in
      ___FILEBASENAMEASIDENTIFIER___DefaultPresenter(interactor: c.resolve(___FILEBASENAMEASIDENTIFIER___Interactor.self)!,
                                router: c.resolve(___FILEBASENAMEASIDENTIFIER___Router.self)!,
                                view: c.resolve(___FILEBASENAMEASIDENTIFIER___View.self)!)
    }
  }
  
  fileprivate func registerRouter() {
    Container.sharedContainer.register(___FILEBASENAMEASIDENTIFIER___Router.self) { c in
      ___FILEBASENAMEASIDENTIFIER___DefaultRouter(viewController: (c.resolve(___FILEBASENAMEASIDENTIFIER___View.self) as? UIViewController)!)
    }
  }
}
