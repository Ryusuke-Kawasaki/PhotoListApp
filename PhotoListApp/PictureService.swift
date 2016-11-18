//
//  PictureService.swift
//  PhotoListApp
//
//  Created by 川崎 隆介 on 2015/12/02.
//  Copyright (c) 2015年 川崎 隆介. All rights reserved.
//

import UIKit

class PictureService: NSObject {
    var animals:[Picture] = []
    var plants:[Picture] = []
    
    override init() {
        super.init()
        self.initializeDataList()
    }
    
    private func initializeDataList() {
        let pic1 = Picture(title: "犬", fileName: "dog")
        let pic2 = Picture(title: "猫", fileName: "cat")
        let pic3 = Picture(title: "ペンギン", fileName: "penguin")
        animals += [pic1,pic2,pic3]
        
        let pic4 = Picture(title: "コスモス", fileName: "cosmos")
        let pic5 = Picture(title: "バラ", fileName: "rose")
        let pic6 = Picture(title: "ひまわり", fileName: "sunflower")
        let pic7 = Picture(title: "チューリップ", fileName: "tulip")
        plants += [pic4,pic5,pic6,pic7]
    }
    
    func countOfAnimals()->Int {
        return animals.count
    }
    
    func pictureInAnimalsAtIndex(_ index:Int)->Picture{
        return animals[index]
    }

    func countOfPlants()->Int {
        return plants.count
    }
    
    func pictureInPlantsAtIndex(_ index:Int)->Picture{
        return plants[index]
    }
}
