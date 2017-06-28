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
@property (weak, nonatomic) IBOutlet UILabel *DetailRecipeLabel;


@end

@implementation DetailedRecipeViewController


- (void)configureView{
    if(self.recipe){
        self.DetailRecipeImage.image = self.recipe.recipeImage;
        self.DetailRecipeName.text = self.recipe.recipeTitle;
        self.DetailRecipeLabel.text = self.recipe.recipeDetails;

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
