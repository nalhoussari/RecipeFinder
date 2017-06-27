//
//  NutritionFilter.swift
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

import UIKit


class NutritionFilter: UIViewController {
    
    var isVegan:Bool = false
    var isVegetarian:Bool = false
    var isGlutenFree:Bool = false
    var isGrainFree:Bool = false
    var isDiaryFree:Bool = false

    @IBAction func veganButton(_ sender: UIButton) {
        if(isVegan == false){
            sender.backgroundColor = UIColor.red
            isVegan = true
        } else {
            sender.backgroundColor = UIColor.yellow
            isVegan = false
        }
    }
    
    @IBAction func vegetarianButton(_ sender: UIButton) {
        if(isVegetarian == false){
            sender.backgroundColor = UIColor.red
            isVegetarian = true
        } else {
            sender.backgroundColor = UIColor.yellow
            isVegetarian = false
        }
    }
    
    @IBAction func glutenButton(_ sender: UIButton) {
        if(isGlutenFree == false){
            sender.backgroundColor = UIColor.red
            isGlutenFree = true
        } else {
            sender.backgroundColor = UIColor.yellow
            isGlutenFree = false
        }
    }
    
    
    @IBAction func grainButton(_ sender: UIButton) {
        if(isGrainFree == false){
            sender.backgroundColor = UIColor.red
            isGrainFree = true
        } else {
            sender.backgroundColor = UIColor.yellow
            isGrainFree = false
        }
    }
    
    
    @IBAction func dairyButton(_ sender: UIButton) {
        if(isDiaryFree == false){
            sender.backgroundColor = UIColor.red
            isDiaryFree = true
        } else {
            sender.backgroundColor = UIColor.yellow
            isDiaryFree = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userInput"{
            
            if let userInputViewController = segue.destination as? UserInputViewController {

                userInputViewController.isVagan = self.isVegan
                userInputViewController.isVegetarian = self.isVegetarian
                userInputViewController.isGlutenFree = self.isGlutenFree
                userInputViewController.isGrainFree = self.isGrainFree
                userInputViewController.isDiaryFree = self.isDiaryFree
                
            }
        }
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
