//
//  ReservationViewController01.swift
//  Project01
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReservationViewController01: UIViewController, UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //delegate method
        textField.resignFirstResponder()
        return true }
    
    @IBOutlet var seatType: UISegmentedControl!
    @IBOutlet var textNumber: UITextField!
    @IBOutlet var seatConfirm: UIButton!
    @IBOutlet var nextView: UIView!
    @IBOutlet var labelType: UILabel!
    @IBOutlet var labelNumber: UILabel!
    @IBOutlet var labelPrice: UILabel!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func seatTypePressed(_ sender: UISegmentedControl) {
        labelType.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func seatConfirmPressed(_ sender: UIButton)
    {
        labelNumber.text = textNumber.text!
        var result = 0
            if Int(textNumber.text!)! >= 10
            {
                labelPrice.text = "10명 이상 예약은 불가능합니다. "
            }
            else
            {
                if labelType.text == "우대"
                {
                result = 15000 * Int(textNumber.text!)!
                    labelPrice.text = String(result)}
                else
                {
                    result = 10000 * Int(textNumber.text!)!
                    labelPrice.text = String(result)
                }
                nextView.isHidden = true
            }
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?)
    {
        if segue.identifier == "res02"
        {
            let destVC = segue.destination as! ReservationViewController04
            
            let number:String! = labelNumber.text
            var outString: String = "탑승할 인원 수는"
            outString += number
            outString += "  명 입니다"
            destVC.info = outString
        }
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
