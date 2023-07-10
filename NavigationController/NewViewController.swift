//
//  NewViewController.swift
//  NavigationController
//
//  Created by intern on 4/25/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var click: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "ResetViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ResetViewController") as! ResetViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
