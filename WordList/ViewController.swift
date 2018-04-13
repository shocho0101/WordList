//
//  ViewController.swift
//  WordList
//
//  Created by 張翔 on 2018/03/31.
//  Copyright © 2018年 sho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(segue: UIStoryboardSegue){
        
    }
    
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        
        
        if let wordArray = saveData.array(forKey: "WORD"){
            if wordArray.count > 0{
                performSegue(withIdentifier: "toQuestionView", sender: nil)
            }
        }
        
        let alart: UIAlertController = UIAlertController(title: "単語", message: "まずは「単語一覧」をクリックして単語を登録してください", preferredStyle: .alert)
        
        alart.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alart, animated: true, completion: nil)
    }
}

