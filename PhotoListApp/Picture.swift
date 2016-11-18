//
//  Picture.swift
//  PhotoListApp
//
//  Created by 川崎 隆介 on 2015/12/02.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class Picture: NSObject {
    var title = ""
    var fileName = ""
    
    init(title:String,fileName:String) {
        super.init()
        self.title = title
        self.fileName = fileName
    }
}
