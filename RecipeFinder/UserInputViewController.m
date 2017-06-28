//
//  UserInputViewController.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "UserInputViewController.h"


@interface UserInputViewController ()

@property (nonatomic) NSMutableString *ingredientsString;


@end

@implementation UserInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self.userInputTextField];
}

- (IBAction)doneUserInput:(id)sender {
}

- (void)textFieldDidChange:(NSNotification *)notification {
    
    if(self.userInputTextField.text == nil){
        self.ingredientsString = [NSMutableString stringWithString: self.userInputTextField.text];
    } else {
        self.ingredientsString = [NSMutableString stringWithFormat:@",%@", self.userInputTextField.text];
    }
    
    self.ingredientsLabel.text = self.ingredientsString;
    self.userInputTextField.text = nil;
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
