//
//  TextViewViewController.swift
//  NavigationScreen
//
//  Created by Macbook Air on 3/9/18.
//  Copyright © 2018 BeesightSoft. All rights reserved.
//

import UIKit

class TextViewViewController: UIViewController,
UIPickerViewDelegate, UIPickerViewDataSource {
    
    var food:[String]!
    
    @IBOutlet weak var pkvFood: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        food = ["cơm","cá","bánh","kẹo","nước ngọt","mực"]
        
        pkvFood.delegate = self
        pkvFood.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    
        return 1    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return food.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return food[row]
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
