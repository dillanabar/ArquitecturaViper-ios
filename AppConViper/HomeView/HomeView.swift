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

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
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

extension HomeView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomCell
        
        return cell!
    }
    
    
    
}

extension HomeView: UITableViewDelegate{
    
}
