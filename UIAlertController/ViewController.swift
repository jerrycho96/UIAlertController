//
//  ViewController.swift
//  UIAlertController
//
//  Created by D7703_26 on 2018. 4. 17..
//  Copyright © 2018년 조영진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPress(_ sender: Any) {
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간입니다.", preferredStyle: .alert)
        
        //후행 클로져(Trailing closuer)
        let okAction = UIAlertAction(title: "종료", style: .default) { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        }
        let cancelAction = UIAlertAction(title: "취소", style: .cancel) { (action: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        }
        
        let testAction = UIAlertAction(title: "테스트", style: .default, handler:  nil)
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAction)
        
        present(myAlert, animated: true, completion: nil)
    }
    
    


}

