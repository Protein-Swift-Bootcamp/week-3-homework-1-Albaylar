//
//  NotificationCenterBackViewController.swift
//  simpraHw1
//
//  Created by Furkan Deniz Albaylar on 25.12.2022.
//

import Foundation

class NotificationCenterBackViewController: UIViewController {

    var text:String = ""
    @IBOutlet weak var label : UILabel!
    @IBOutlet weak var textField : UITextField!
    
    
    @IBAction func backData()
    {
        var sendText = ""
        if txt.text == "" || txt.text == nil{
            sendText = "Back To Notification Center"
        } else {
            sendText = txt.text!
        }
        NotificationCenter.default.post(name: .notifyA, object: sendText)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl?.text = text
        // Do any additional setup after loading the view.
    }
}
