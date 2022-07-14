//
//  ViewController.swift
//  Test2
//
//  Created by Bimal@AppStation on 26/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textfield : UITextField!
    @IBOutlet var messagelabel1 : UILabel!
    @IBOutlet var messagelabel2 : UILabel!
    @IBOutlet var messagelabel3 : UILabel!
    @IBOutlet var messagelabel4 : UILabel!
    
    var arrSubstrings = Array<String>()

//    var empy: String = ""
//    var S : String = String()
//    let str = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func buttonActionLabel(sender: UIButton){
        
        
        let txtfld = "\(textfield.text!)"
        var startIndex = txtfld.startIndex   // 0
        var endIndex = txtfld.startIndex     // 0
        var indexMoved = 4
        
        while indexMoved < txtfld.count {
           endIndex = txtfld.index(startIndex, offsetBy: 4)
            let strSubString = txtfld.substring(with: startIndex ..< endIndex)
            print("SubString Received : \(strSubString)")
            self.arrSubstrings.append(strSubString)
            startIndex = endIndex
            indexMoved = indexMoved + 4
        }
        
        
        for strSubstring in arrSubstrings {
            let strPosition = arrSubstrings.firstIndex(of: strSubstring)
            print("Substring : \(strSubstring)")
            if strPosition == 0 {
                messagelabel1.text = strSubstring
            }else if strPosition == 1 {
                messagelabel2.text = strSubstring
            }else if strPosition == 2 {
                messagelabel3.text = strSubstring
            }else {
                messagelabel4.text = strSubstring
            }
        }
        
//        let txtfld = "\(textfield.text!)"
        
//        let startIndex = txtfld.startIndex
//        let endIndex = txtfld.index(txtfld.startIndex, offsetBy: 4)
//        let firstString = txtfld.substring(with: startIndex ..< endIndex)
//        messagelabel1.text = firstString
//
//        let endIndexs = txtfld.index(txtfld.startIndex, offsetBy: 8)
//        let secondString = txtfld.substring(with: endIndex ..< endIndexs)
//        messagelabel2.text = secondString
//
//
//        let endIndex3 = txtfld.index(txtfld.startIndex, offsetBy: 12)
//        let thirdString = txtfld.substring(with: endIndexs ..< endIndex3)
//        messagelabel3.text = thirdString
//
//
//        let endIndex4 = txtfld.index(txtfld.startIndex, offsetBy: 16)
//        let fourthString = txtfld.substring(with: endIndex3 ..< endIndex4)
//        messagelabel4.text = fourthString
        
        
    }
}
