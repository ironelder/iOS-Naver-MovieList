//
//  ViewController.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/14.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var customTableView : UITableView!
    
    @IBOutlet weak var nextButton: UIButton!
    

    let cellIdentifier:String = "cell"
    let korean = ["에스프레소","아메리카노","카페라떼","카페모카","바닐라라떼","카라멜 마끼아또","콜드브루"]
    let english = ["espresso","americano","cafe latte","cafe moca","vanila latte","caramel macchiato","cold brew"]
    var movie = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.customTableView.dataSource = self
        self.customTableView.dataSource = self
        self.customTableView.delegate = self
//        self.customTableView.register(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        getMovieList()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return self.korean.count
        case 1:
            return self.english.count
        case 2:
            return self.movie.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = customTableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
//        let test = indexPath.section == 0 ? self.korean[indexPath.row] : self.english[indexPath.row]
        let test = getItemLabel(section: indexPath.section, index: indexPath.row)
        cell.textLabel?.text = test
        
        return cell
    }
    
    func getItemLabel(section:Int, index:Int) -> String{
        switch section {
        case 0:
            return self.korean[index]
        case 1:
            return self.english[index]
        case 2:
            return self.movie[index]
        default:
            return ""
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "[맛있는 커피]"
        case 1:
            return "[Delicious Coffee]"
        case 2:
            return "[MOVIE List]"
        default:
            return ""
        }
    }
    
    func getMovieList(){
        print("getMovieList()")
        let parameters:Parameters = [
            "query" : "반지"
        ]
        Network.shared.getMovieList(parameters: parameters, completion: { (data)->(Void) in
            do{
                let res:MovieModel = try JSONDecoder().decode(MovieModel.self, from: data)
                for item in res.items {
                    self.movie.append(item.title)
                }
                self.customTableView.reloadData()
                print("res Data = \(res)")
                print("response Data = \(data)")
            }catch {
                print(error)
            }
        })
    }
    
    @IBAction func nextButtonClick(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(identifier: "SecondVC") else {
            return
        }
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        uvc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        self.present(uvc, animated:true)
    }
    
}

