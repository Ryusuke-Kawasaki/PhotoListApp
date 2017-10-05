//
//  MasterViewController.swift
//  PhotoListApp
//
//  Created by 川崎 隆介 on 2015/12/02.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var pictureService = PictureService()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table View

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1 {
            return "植物"
        }
        return "動物"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return pictureService.countOfPlants()
        }
        return pictureService.countOfAnimals()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 
        
        
        var picture:Picture?
        if indexPath.section == 0 {
            picture = pictureService.pictureInAnimalsAtIndex(indexPath.row)
        }else if indexPath.section == 1 {
            picture = pictureService.pictureInPlantsAtIndex(indexPath.row)
        }
        
        if let pic = picture {
            cell.textLabel?.text = pic.title
            cell.imageView?.image = UIImage(named: pic.fileName)
        }
        
        return cell
    }

}

