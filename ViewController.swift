//
//  ViewController.swift
//  memo
//
//  Created by 吉田郭冶 on 2018/06/12.
//  Copyright © 2018年 吉田郭冶. All rights reserved.
//

import UIKit
//プロトコル宣言
class ViewController: UIViewController, UITableViewDataSource {

    var memoArray  = [String]()
    @IBOutlet var memoTableView:UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memoTableView.dataSource = self
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        loadMemo()
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return memoArray.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "memocell")!
        cell.textLabel?.text = memoArray[indexPath.row]
    return cell
    }
    func loadMemo(){
    let ud = UserDefaults.standard
        if ud.array(forKey: "memoArray") != nil {
            memoArray=ud.array(forKey: "memoArray")as![String]
            memoTableView.reloadData()
        }
    }
    
    
    
    
    
    
}

