//
//  View.swift
//  VIPER
//
//  Created by HAMZA DOUAIJ on 7/8/24.
//

import UIKit
import Foundation
// ViewController
// protocol
// refereence
 
protocol AnyView {
    var presenter : AnyPresenter? {get set }
    func update(with users : [User])
    func update(with error : String )
}
class UserViewController : UIViewController , UITableViewDelegate , UITableViewDataSource , AnyView {
    var presenter: AnyPresenter?
    private var tableView : UITableView {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.isHidden = true
        return table 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with error: String) {
        
    }
    //  table configuration :
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
