//
//  ViewController.swift
//  SwiftOCDemoTest
//
//  Created by NowOrNever on 29/06/2017.
//  Copyright © 2017 Focus. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    func swiftShowInfo() {
        print("swiftController Info")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    fileprivate func setupUI(){
        view.backgroundColor = UIColor.gray
        
        let label = UILabel.init()
        label.backgroundColor = UIColor.green
        label.text = "swiftController"
        label.sizeToFit()
        view.addSubview(label)
//        label.center = view.center
        label.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.height.equalTo(60)
            make.width.equalTo(240)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let ocVc = OCViewController.init()
        ocVc.ocShowInfo()
        self.present(ocVc, animated: true, completion: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

