//
//  HomeView.swift
//  AppConViper
//
//  Created by Daniel Illana Bargueño on 01/06/2020.
//  Copyright © 2020 Daniel Illana Bargueño. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIViewController {

    // MARK: Properties
    var presenter: HomePresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}
