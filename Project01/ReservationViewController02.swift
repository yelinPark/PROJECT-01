//
//  ReservationViewController02.swift
//  Project01
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReservationViewController02: UIViewController {

    @IBOutlet var nextView: UIView!
    @IBOutlet var buttonConfirm: UIButton!
    @IBAction func buttonConfirmPressed(_ sender: UIButton) {
        nextView.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
       // @IBOutlet var labelInfo: UILabel! @IBOutlet var pickerCollege: UIPickerView!
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
