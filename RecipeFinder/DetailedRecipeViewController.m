//
//  DetailedRecipeViewController.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "DetailedRecipeViewController.h"

@interface DetailedRecipeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *recipeName;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImage;
@property (weak, nonatomic) IBOutlet UILabel *recipeDetailedLabel;

@end

@implementation DetailedRecipeViewController

#pragma mark - Managing the detail item

- (void)setRecipe:(id)newRecipe {
    if (self.recipe != newRecipe) {
        self.recipe = newRecipe;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView{
    if(self.recipe){
        self.recipeImage.image = [UIImage imageNamed:recipe.recipeImage];
        self.recipeName.text = recipe.title;
        self.recipeDetailedLabel.text = recipe.recipeDetails;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureView];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
