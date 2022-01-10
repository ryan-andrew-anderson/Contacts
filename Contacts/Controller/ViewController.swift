//
//  ViewController.swift
//  Contacts
//
//  Created by Ryan Anderson on 1/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var contacts = [
        Contact(name: "Ryan A. Anderson", number: "435-215-9307", email: "ryan.anderson@gmail.com"),
        Contact(name: "Kendra M. Anderson", number: "801-669-2931", email: "a@b.com")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.reuseableCell, for: indexPath) as! TableViewCell
        cell.contactName.text = contacts[indexPath.row].name
        return cell
    }
}

