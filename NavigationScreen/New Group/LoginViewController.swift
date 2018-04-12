//
//  LoginViewController.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/6/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func nextRegisterAction(_ sender: Any) {
        let registerViewController = RegisterViewController()
    self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    

    @IBAction func nextScreenAction(_ sender: Any) {
       let testTableView = TableViewViewController()
        self.navigationController?.pushViewController(testTableView, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
