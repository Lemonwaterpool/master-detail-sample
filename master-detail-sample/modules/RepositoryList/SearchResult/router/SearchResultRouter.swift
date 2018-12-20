//
//  SearchResultRouter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class SearchResultRouter {
    
    unowned var viewController: UIViewController
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    static func assembleModules() -> UIViewController {
        let view = SearchResultViewController()
        let router = SearchResultRouter(viewController: view)
        let presenter = SearchResultViewPresenter(view: view,
                                                  router: router)
        
        view.presenter = presenter
        
        return view
    }
}

extension SearchResultRouter: SearchResultWireframe {
    
}
