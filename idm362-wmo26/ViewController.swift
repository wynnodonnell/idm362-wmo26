//
//  ViewController.swift
//  idm362-wmo26
//
//  Created by Wynn O'Donnell on 1/25/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var bookmarkBtn: UIButton!
    
    @IBAction func bookmarkBtnFun(_ sender: Any) {
        if (toggleFlag == true) {
            bookmarkBtn.setBackgroundImage(UIImage(systemName: "bookmark"), for: UIControl.State.normal)

            toggleFlag = false
        } else {
            bookmarkBtn.setBackgroundImage(UIImage(systemName: "bookmark.fill"), for: UIControl.State.normal)
            toggleFlag = true
        }
    }
    
}

