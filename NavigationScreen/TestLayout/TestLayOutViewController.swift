//
//  TestLayOutViewController.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/8/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit



class TestLayOutViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: set image
        let background:UIImage = UIImage(named: "bgLogin")!
        self.view.backgroundColor = UIColor(patternImage: background)

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    func setupUI() {
        
    }
    
    func loadData() {
        
    }
    
    

    @IBAction func nextScreenAction(_ sender: Any) {
        let textViewViewController = TextViewViewController(); self.navigationController?.pushViewController(textViewViewController, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension UIImageView {
    func customRounded(borderWidth: CGFloat, color: UIColor) {
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = false
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = self.frame.size.height/2
        self.clipsToBounds = true
    }
}
