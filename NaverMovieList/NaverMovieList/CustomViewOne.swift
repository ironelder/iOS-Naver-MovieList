//
//  CustomViewOne.swift
//  NaverMovieList
//
//  Created by Sky Ashboun on 2020/09/22.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import Foundation
import UIKit

class CustomViewOne : UIView {
    
    private let xibName = "CustomViewOne"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customViewInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.customViewInit()
    }
    
    private func customViewInit(){
        guard let view = Bundle.main.loadNibNamed(xibName, owner: self, options: nil)?.first as? UIView else {
            return
        }
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.addSubview(view)
    }
    
}
