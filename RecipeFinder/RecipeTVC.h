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

- (void)configureCellWithRecipe: (Recipe *)recipe;

@end
