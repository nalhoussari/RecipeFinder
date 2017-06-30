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


@end

@implementation DetailedRecipeViewController


- (void)configureView{
    if(self.recipe){
        NSURL *imageURL = [NSURL URLWithString:self.recipe.recipeImage];
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        self.DetailRecipeImage.image = [UIImage imageWithData:imageData];
        self.DetailRecipeName.text = self.recipe.recipeTitle;
        self.DetailRecipeTextView.text = self.recipe.recipeDetails;

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
