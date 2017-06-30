//
//  RecipesTableView.h
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "ViewController.h"
#import "Recipe.h"  // we need to change that after changing the Recipe file inot swift
#import "DetailedRecipeViewController.h"
#import "UserInputViewController.h"


@class Recipe;

@interface RecipesTableView : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) Recipe *recipe;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spiner;

//@property (nonatomic) BOOL isVagan;
//@property (nonatomic) BOOL isVegetarian;
//@property (nonatomic) BOOL isGlutenFree;
//@property (nonatomic) BOOL isGrainFree;
//@property (nonatomic) BOOL isDiaryFree;

@end
