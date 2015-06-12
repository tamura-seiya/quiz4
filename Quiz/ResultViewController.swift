//
//  ResultViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
     var correctAnswer:Int = 0
    
    @IBOutlet weak var resultlabel :UILabel!
    @IBOutlet weak var resultlabel1 :UILabel!
    @IBOutlet weak var resultlabel2 :UIImageView!
    let ResultPic0: UIImage! = UIImage(named: "stevejobs-e1317891052158.png")
    let ResultPic1: UIImage! = UIImage(named: "ipod.png")
    let ResultPic2: UIImage! = UIImage(named: "stevejobswallpaper-ipad.png")
    let ResultPic3: UIImage! = UIImage(named: "stevejobs1.png")
    

    override func viewDidLoad() {

        super.viewDidLoad()
        
        resultlabel1.text = String(format: "5問中%d問正解",correctAnswer);
        
        if(correctAnswer == 5){
           resultlabel.text = "あなたはジョブスだ"
           resultlabel2.image = ResultPic0
        }else if(correctAnswer >= 3){
           resultlabel.text = "君は夢を売り続けるだろう"
           resultlabel2.image = ResultPic1
        }else if(correctAnswer >= 1){
           resultlabel.text = "アップルで勉強しなおせ"
           resultlabel2.image = ResultPic2
        }else if(correctAnswer == 0){
           resultlabel.text = "君はもうクビだ"
           resultlabel2.image = ResultPic3
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  }
