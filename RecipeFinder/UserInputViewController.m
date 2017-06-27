//
//  UserInputViewController.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "UserInputViewController.h"


@interface UserInputViewController ()

@end

@implementation UserInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)doneUserInput:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"recipeList"]){
        
        RecipesTableView *recipesTableView = segue.destinationViewController;

        //After setting the model Recipe
        recipesTableView.recipe = self.recipe;
        
//        recipesTableView.isVagan = self.isVagan;
//        recipesTableView.isVegetarian = self.isVegetarian;
//        recipesTableView.isGlutenFree = self.isGlutenFree;
//        recipesTableView.isGrainFree = self.isGrainFree;
//        recipesTableView.isDiaryFree = self.isDiaryFree;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
