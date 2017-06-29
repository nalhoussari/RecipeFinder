//
//  UserInputViewController.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "UserInputViewController.h"


@interface UserInputViewController () <UITextFieldDelegate>

@property (nonatomic) NSMutableString *ingredientsString;


@end

@implementation UserInputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userInputTextField.delegate = self;
    self.ingredientsString = [@"" mutableCopy];
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidChange:) name:UITextFieldTextDidChangeNotification object:self.userInputTextField];
}

- (IBAction)doneUserInput:(id)sender {
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}

-(void)textFieldDidEndEditing:(UITextField *)textField{
    if([self.ingredientsString isEqualToString:@""]){
        self.ingredientsString = [NSMutableString stringWithString: self.userInputTextField.text];
    } else {
        [self.ingredientsString appendString: [NSString stringWithFormat:@",%@", self.userInputTextField.text]];
    }
    
    //We can use this instead by adding the ingredients to an array and then separate them by what ever we want by this method:
    //NSString *prettyPrintedArrayString =  [[NSArray array] componentsJoinedByString:@","];
    
    self.ingredientsLabel.text = self.ingredientsString;
    self.userInputTextField.text = @"";
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"recipeList"]){
        
        RecipesTableView *recipesTableView = segue.destinationViewController;

        //Passing the ingredients to recipe ingredients
        //self.recipe.ingredients = self.ingredientsLabel.text;
        
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
