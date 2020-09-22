//
//  ScrollInfoViewController.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/21.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import UIKit

class ScrollInfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonClick(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    @IBAction func nextButtonClick(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(identifier: "ThirdVC") else {
            return
        }
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        uvc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        self.present(uvc, animated:true)
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
