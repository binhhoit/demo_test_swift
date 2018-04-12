//
//  TableViewViewController.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/9/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

let nameCell = "TestTableViewCell"

class TableViewViewController: UIViewController {
    
    
    @IBOutlet weak var tbvTest: UITableView!
    
    let test = ["a","b","c","d","e","f","g","h","k","l"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        tbvTest.register(UINib(nibName: nameCell, bundle: nil), forCellReuseIdentifier: nameCell)
        tbvTest.delegate = self
        tbvTest.dataSource = self
    }
    
    
    
}

extension TableViewViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: nameCell) as!
        TestTableViewCell
        
        cell.textItem = test[indexPath.item]
        cell.testTran(tesT: test[indexPath.item],image: UIImage(named: "ic_logo")!)
        cell.backgroundColor = UIColor.red
       
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Phần"
    }
    
    func  tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //        type dinamic cell
        //        return UITableViewAutomaticDimension
        
        return 100
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
