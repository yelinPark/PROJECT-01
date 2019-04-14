//
//  ReservationViewController04.swift
//  Project01
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ReservationViewController04: UIViewController {

    @IBOutlet var seatNumber: UILabel!
    @IBOutlet var seatImage: UIImageView!

    let seatSelectImage = UIImage(named: "seatSelect.jpg")
    
    var info:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        seatImage.image = seatSelectImage
        if let contentString = info
        {
            seatNumber.text = contentString
        }
        // Do any additional setup after loading the view.
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


