//
//  RecipeTVC.h
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface RecipeTVC : UITableViewCell
<<<<<<< Updated upstream

- (void)configureCellWithRecipe: (Recipe *)recipe;
=======
<<<<<<< Updated upstream
@property (weak, nonatomic) IBOutlet UIView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;
=======

@property (weak, nonatomic) IBOutlet UIView *cellImage;
@property (weak, nonatomic) IBOutlet UILabel *cellLabel;

- (void)configureCellWithRecipe: (Recipe *)recipe;
>>>>>>> Stashed changes
>>>>>>> Stashed changes

@end
