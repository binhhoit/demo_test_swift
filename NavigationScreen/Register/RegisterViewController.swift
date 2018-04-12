//
//  RegisterViewController.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/6/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var ivLogo: UIImageView!
    
    @IBAction func backAction(_ sender: Any) {
        //TODO: back screen
        navigationController?.popToRootViewController(animated: true)   
        
    }
    
    @IBAction func nextScreenAction(_ sender: Any) {
        let testUiViewControler = TestLayOutViewController()
        self.navigationController?.pushViewController(testUiViewControler, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivLogo.customRounded(borderWidth: 10, color: UIColor.orange)
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
