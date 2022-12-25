//
//  SexondViewController.swift
//  simpraHw1
//
//  Created by Furkan Deniz Albaylar on 24.12.2022.
//

import UIKit



class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    // completionHandler is a variable to using closure method.
    public var completionHandler: ((String) -> Void)?
    // Delegate method to recieve data's another viewcontroller
    var delegate : MyDataSendingDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: - This function to save and after that return to the first page with using Closure Method.
    @IBAction func didTapSave(_ sender: Any) {
        var sendText = ""
        if textField.text == "" || textField.text == nil{
            sendText = "Back To Closure."
        } else {
            sendText = textField.text!
        }
        completionHandler?(sendText)
        dismiss(animated: true, completion: nil)
    }
    //MARK: - This function to save and after that return to the first page with using Notification Center Method.
    @IBAction func didTapToSaveNotificationCenter(_ sender: Any) {
        var sendText = ""
        if textField.text == "" || textField.text == nil{
            sendText = "Back To Notification Center."
        } else {
            sendText = textField.text!
        }
        NotificationCenter.default.post(name: .notifyA, object: sendText)
        dismiss(animated: true, completion: nil)
    }
    //MARK: - This function to save and after that return to the first page with using Protocol Method.
    @IBAction func didTapToSaveProtocols(_ sender: Any) {
        var sendText = ""
        if textField.text == "" || textField.text == nil{
            sendText = "Back To Protocols."
        } else {
            sendText = textField.text!
        }
            self.delegate?.sendDataToFirstViewController(myData: sendText)
            dismiss(animated: true, completion: nil)
        }
    }
// This protocol to Delegate method.
protocol MyDataSendingDelegate {
    func sendDataToFirstViewController(myData: String)
}
