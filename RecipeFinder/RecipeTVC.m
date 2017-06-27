//
//  RecipeTVC.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "RecipeTVC.h"

@interface RecipeTVC()

@property (weak, nonatomic) IBOutlet UIView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

@property (nonatomic) Recipe *recipe;

@end

@implementation RecipeTVC

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCellWithRecipe: (Recipe *)recipe{
    //excute the follwoing lines once the Recipe file is done
//    self.cellImage.image = [UIImage imageeNamed:recipe.recipeImage];
//    self.cellLabel.text = recipe.recipeTitle;
}


@end
