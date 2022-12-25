//
//  ViewController.swift
//  simpraHw1
//
//  Created by Furkan Deniz Albaylar on 24.12.2022.
//

import UIKit

class FirstViewController: UIViewController,MyDataSendingDelegate{
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This properties to Notification Center.
        let notificationCenter: NotificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.notificationBack(myData:)), name: .notifyA, object: nil)
    }
    // This part to notificationCenter method.
    @objc func notificationBack(myData:Notification){
        let data = myData.object as! String
        label.text = data
    }
    // This part to receive a data where comes to second view.
    func sendDataToFirstViewController(myData: String) {
        label.text = myData
    }
    //MARK: - This one is a doing a tapping a first view's next button. When you tapped a this button you will go to secondView.
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "second") as! SecondViewController
        vc.delegate = self
        vc.completionHandler = { text in
            if text == text {
                self.label.text = text
            }
            else{
                print("There is a problem when you want to go other view ")
            }
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    // This part is a extension for a NotificationCenter Method.
}
// This part is a extension to Notification Center.
extension Notification.Name{
    static let notifyA = Notification.Name(rawValue: "NotifyA")
}


