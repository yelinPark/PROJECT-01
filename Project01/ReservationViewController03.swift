//
//  ReservationViewController03.swift
//  Project01
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReservationViewController03: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet var pickerDestination: UIPickerView!
    @IBOutlet var pickerConfirm: UIButton!
    @IBOutlet var nextView: UIView!
    
    let localDestination:Array<String> = ["서울", "경기", "인천" , "광주", "부산"]

    //pickerstart
    func numberOfComponents(in pickerDestination: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerDestination: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    { return localDestination.count}
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {return localDestination[row] }
    
    @IBAction func pickerConfirmPressed(_ sender: UIButton)
    {
        nextView.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
