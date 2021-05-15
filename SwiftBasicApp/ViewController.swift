//
//  ViewController.swift
//  SwiftBasicApp
//
//  Created by inoueyuuki on 2021/05/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var tapLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func tap(_ sender: Any) {
        count += 1
        // キャスト
        countLabel.text = String(count)
        
        if count > 5 {
            imageView.image = UIImage(named: "back2")
        }
        
        if  count > 10 {
            imageView.image = UIImage(named: "back3")
        }
        // switch文
        switch count {
            case 6:
                tapLabel.text = "6"
                break
            case 10:
                tapLabel.text = "10"
                break
            default:
                tapLabel.text = "TAP"
        }
    }
    
}
