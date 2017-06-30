//
//  DetailedRecipeViewController.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "DetailedRecipeViewController.h"

@interface DetailedRecipeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *DetailRecipeName;
@property (weak, nonatomic) IBOutlet UIImageView *DetailRecipeImage;
//@property (weak, nonatomic) IBOutlet UILabel *DetailRecipeLabel;
@property (weak, nonatomic) IBOutlet UITextView *DetailRecipeTextView;

- (NSString *)recipeIngredientsArrayString;

@end

@implementation DetailedRecipeViewController

- (NSString *)recipeIngredientsArrayString{
    NSMutableString *allIngredients = [[NSMutableString alloc] init];
    
    for (NSString *ingredients in self.recipe.recipeIngredientsArray){
        [allIngredients appendFormat:@"%@\n\n", ingredients];
        NSLog(@"%@\n", ingredients);
    }
    return allIngredients;
}

- (NSString *)recipeDetailArray{
    
    NSMutableString *allSteps = [[NSMutableString alloc] init];
    
    for (NSString *steps in self.recipe.recipeDetails){
        [allSteps appendFormat:@"%@\n%@\n\n",self.recipeIngredientsArrayString, steps];
        NSLog(@" %@\n", steps);
    }
    return allSteps;
}

- (void)configureView{
    if(self.recipe){
        NSURL *imageURL = [NSURL URLWithString:self.recipe.recipeImage];
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        self.DetailRecipeImage.image = [UIImage imageWithData:imageData];
        self.DetailRecipeName.text = self.recipe.recipeTitle;
        self.DetailRecipeTextView.text = self.recipeDetailArray;
        NSLog(@"The steps are: %@", self.recipeDetailArray);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureView];
    
    self.DetailRecipeTextView.editable = NO;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
