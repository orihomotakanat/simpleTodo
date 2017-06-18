//
//  elementView.swift
//  simpleTodo
//
//  Created by Tanaka, Tomohiro on 2017/06/18.
//  Copyright © 2017年 Tanaka, Tomohiro. All rights reserved.
//

import UIKit

class elementView: UIViewController {
    
    var elements = [String]()

    @IBOutlet var textElement: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Viewが呼ばれる度に呼ばれる
    override func viewWillAppear(_ animated: Bool) {

       
    }
    
    
    @IBAction func registerElement(_ sender: Any) {
        //以前に登録していたelementsを読み出す
        if UserDefaults.standard.object(forKey: "elementsOfArray") != nil {
            elements = UserDefaults.standard.object(forKey: "elementsOfArray") as! [String]
        }
        
        
        //Add element to elementsArray
        elements.append(textElement.text!)
        
        //App内にelementsデータを保存
        UserDefaults.standard.set(elements, forKey: "elementsOfArray")
        
        //戻る
        self.navigationController?.popViewController(animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
