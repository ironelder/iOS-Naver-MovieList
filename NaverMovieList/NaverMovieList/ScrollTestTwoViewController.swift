//
//  ScrollTestTwoViewController.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/23.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import UIKit

class ScrollTestTwoViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var images = [CustomViewOne]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

//        // Set the scrollView's frame to be the size of the screen
//        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
//        scrollView.backgroundColor = .systemTeal
//        // Set the contentSize to 100 times the height of the phone's screen so that we can add 100 images in the next step
//        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: UIScreen.main.bounds.height*100)
//        view.addSubview(scrollView)
//        
//        for i in 0...10 {
//          images.append(CustomViewOne(frame: CGRect(x: 50, y: UIScreen.main.bounds.height*CGFloat(i), width: 100, height: 200)))
//          scrollView.addSubview(images[i])
//        }
        
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
