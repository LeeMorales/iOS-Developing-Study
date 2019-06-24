//
//  ViewController.swift
//  Checklists
//
//  Created by Lee Morales on 2019/6/24.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
}
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
    return cell
}
