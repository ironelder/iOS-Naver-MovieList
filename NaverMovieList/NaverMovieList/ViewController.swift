//
//  ViewController.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/14.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var customTableView : UITableView!
    
    let cellIdentifier:String = "cell"
    let korean = ["에스프레소","아메리카노","카페라떼","카페모카","바닐라라떼","카라멜 마끼아또","콜드브루"]
    let english = ["espresso","americano","cafe latte","cafe moca","vanila latte","caramel macchiato","cold brew"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.customTableView.dataSource = self
        self.customTableView.dataSource = self
        self.customTableView.delegate = self
//        self.customTableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.korean.count
        case 1:
            return self.english.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = customTableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        let test = indexPath.section == 0 ? self.korean[indexPath.row] : self.english[indexPath.row]
        cell.textLabel?.text = test
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "[맛있는 커피]"
        case 1:
            return "[Delicious Coffee]"
        default:
            return ""
        }
    }
}

