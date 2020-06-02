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
       presenter?.viewDidLoad()
       navigationControllerConfiguration()
    }
    
    
    func navigationControllerConfiguration(){
        let navigation = UINavigationBarAppearance()
        navigation.configureWithOpaqueBackground()
        navigation.backgroundColor = .darkGray
        navigation.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigation.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationItem.title = "The Movies"
        navigationController?.navigationBar.standardAppearance = navigation
        navigationController?.navigationBar.scrollEdgeAppearance = navigation
    }
}

extension HomeView: HomeViewProtocol {
    // TODO: implement view output methods
}
