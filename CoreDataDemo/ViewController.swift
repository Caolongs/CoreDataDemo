//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by cao longjian on 2018/2/2.
//  Copyright © 2018年 caolongjian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 创建并行队列
//        let concurrentQueue = DispatchQueue(label: "com.geselle.concurrentQueue",attributes:.concurrent)
//        concurrentQueue.async {
//            for i in 0...10 {
//                let str = String(i)
//                CoreDataTools.insertData(entyName: "Users", dict: ["name":"cc"+str,"phone":"3333"])
//            }
//        }
//        for i in 0...10 {
//            let str = String(i)
//            CoreDataTools.insertData(entyName: "Users", dict: ["name":"ff"+str,"phone":"3333"])
//        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    @IBAction func addBtnClick(_ sender: Any) {
        CoreDataTools.insertData(entyName: "Users", dict: ["name": nameField.text,"phone": phoneField.text])
    }
    
    @IBAction func deleteBtnClick(_ sender: Any) {
        CoreDataTools.removeData(entyName: "Users", predStr: nil)
    }
    
    @IBAction func modiftBtnClick(_ sender: Any) {

        if let name = nameField.text {
            CoreDataTools.modifyData(entyName: "Users", predStr: "name= '" + name + "'", dict: ["name": name,"phone": phoneField.text])
        }
        
        
    }
    
    @IBAction func queryBtnClick(_ sender: Any) {
        if let objArr = CoreDataTools.queryData(entyName: "Users", predStr: nil) {
            for obj in objArr {
                print("name:\(obj.value(forKey: "name") as! String)")
                
            }
        }
    }
    
    
    @IBAction func nameChange(_ sender: UITextField) {
        
    }
    
    @IBAction func phoneChange(_ sender: UITextField) {
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

