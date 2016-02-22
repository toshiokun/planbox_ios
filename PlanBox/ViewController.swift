//
//  ViewController.swift
//  PlanBox
//
//  Created by Taniguchi Toshihiro on 2016/02/21.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var agePicker: UIPickerView!
    @IBOutlet weak var characterPicker: UIPickerView!
    @IBOutlet weak var loveNumberPicker: UIPickerView!
    
    
    let compos = [[Int](0...99)]
    let compos1 = [["おとなしい","賑やか","性格がいい"]]
    let compos2 = [[Int](0...50)]
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return compos.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var rowsNumber = 0
        if(pickerView.tag == 0) {
            let compo = compos[component]
            rowsNumber = compo.count
        } else if (pickerView.tag == 1) {
            let compo = compos1[component]
            rowsNumber = compo.count
        } else if (pickerView.tag == 1) {
            let compo = compos2[component]
            rowsNumber = compo.count
        }
        return rowsNumber
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var item :String?
        if(pickerView.tag == 0) {
            let number = compos[component][row]
            item = String(number)
        } else if (pickerView.tag == 1) {
            let character = compos1[component][row]
            item = character
        } else if (pickerView.tag == 1) {
            let loveNum = compos2[component]
            item = String(loveNum)
        }
        return item
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        agePicker.delegate = self
        agePicker.dataSource = self
        characterPicker.delegate = self
        characterPicker.dataSource = self
        loveNumberPicker.delegate = self
        loveNumberPicker.dataSource = self
        
        agePicker.tag = 0
        characterPicker.tag = 1
        loveNumberPicker.tag = 2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
