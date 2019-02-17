//
//  ViewController.swift
//  SamplePassbyvalue
//
//  Created by 横山新 on 2019/02/18.
//  Copyright © 2019 ARATAYOKOYAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: segueを使用して画面遷移&値渡し
    @IBAction func byPerformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "toSegueViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSegueViewController" {
            let nextVC = segue.destination as! SegueViewController
            nextVC.text = "fromViewController"
        }
    }
    
    // MARK: navigationControllerを使用して画面遷移&値渡し ただし，自身がnavigationController下にいること その他,navigationControllerを使用してpresentも行える
    @IBAction func byNavicationPush(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "navigationPushView") as! NavigationPushViewController
        nextVC.text = "fromViewController"
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    // MARK: presentを使用して画面遷移&値渡し navigationControllerは不要だが，遷移方法はモーダルに限定される
    @IBAction func byPresent(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "presentView") as! PresentViewController
        nextVC.text = "fromViewController"
        self.present(nextVC, animated: true, completion: nil)
    }
    
    // MARK: 異なるstoryboardにある画面に，navigationControllerを使用して画面遷移&値渡し ただし，自身がnavigationController下にいること その他,navigationControllerを使用してpresentも行える
    @IBAction func byNavigationPushForOtherStoryboard(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Sub", bundle: nil)
        let nextVC = storyboard.instantiateViewController(withIdentifier: "otherStoryboard") as! OtherStoryboardViewController
        nextVC.text = "fromViewController"
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
