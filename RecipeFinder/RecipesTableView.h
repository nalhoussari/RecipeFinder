//
//  RecipesTableView.h
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "ViewController.h"
#import "Recipe.h"

@interface RecipesTableView : ViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) Recipe *recipe;

//@property (nonatomic) BOOL isVagan;
//@property (nonatomic) BOOL isVegetarian;
//@property (nonatomic) BOOL isGlutenFree;
//@property (nonatomic) BOOL isGrainFree;
//@property (nonatomic) BOOL isDiaryFree;

@end
