//
//  NutritionFilter.swift
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//
//
//import UIKit
//
//
//class NutritionFilter: UIViewController {
//    
////    var isVegan:Bool = false
////    var isVegetarian:Bool = false
////    var isGlutenFree:Bool = false
////    var isGrainFree:Bool = false
////    var isDiaryFree:Bool = false
//    
//    //We need to unite the variables on Recipe to those:
//    var recipe: Recipe!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.recipe = Recipe ()
//    }
//
//    @IBAction func veganButton(_ sender: UIButton) {
//        if(recipe.isVegan == false){
//            sender.backgroundColor = UIColor.red
//            recipe.isVegan = true
//        } else {
//            sender.backgroundColor = UIColor.yellow
//            recipe.isVegan = false
//        }
//    }
//    
//    @IBAction func vegetarianButton(_ sender: UIButton) {
//        if(recipe.isVegetarian == false){
//            sender.backgroundColor = UIColor.red
//            recipe.isVegetarian = true
//        } else {
//            sender.backgroundColor = UIColor.yellow
//            recipe.isVegetarian = false
//        }
//    }
//    
//    @IBAction func glutenButton(_ sender: UIButton) {
//        if(recipe.isGlutenFree == false){
//            sender.backgroundColor = UIColor.red
//            recipe.isGlutenFree = true
//        } else {
//            sender.backgroundColor = UIColor.yellow
//            recipe.isGlutenFree = false
//        }
//    }
//    
//    
//    @IBAction func grainButton(_ sender: UIButton) {
//        if(recipe.isGrainFree == false){
//            sender.backgroundColor = UIColor.red
//            recipe.isGrainFree = true
//        } else {
//            sender.backgroundColor = UIColor.yellow
//            recipe.isGrainFree = false
//        }
//    }
//    
//    
//    @IBAction func dairyButton(_ sender: UIButton) {
//        if(recipe.isDiaryFree == false){
//            sender.backgroundColor = UIColor.red
//            recipe.isDiaryFree = true
//        } else {
//            sender.backgroundColor = UIColor.yellow
//            recipe.isDiaryFree = false
//        }
//    }
//    
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "userInput"{
//            
//            if let userInputViewController = segue.destination as? UserInputViewController {
//                
//                userInputViewController.recipe = self.recipe
//                
////                userInputViewController.isVagan = self.isVegan
////                userInputViewController.isVegetarian = self.isVegetarian
////                userInputViewController.isGlutenFree = self.isGlutenFree
////                userInputViewController.isGrainFree = self.isGrainFree
////                userInputViewController.isDiaryFree = self.isDiaryFree
//                
//            }
//        }
//    }
//    
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//    
//
//
//}
