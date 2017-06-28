//
//  Recipe.h
//  RecipeFinder
//
//  Created by Livleen Rai on 2017-06-27.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecipeFinder-Bridging-Header.h"
#import <UNIRest/UNIRest.h>
#import "UIKit/UIKit.h"

@interface Recipe : NSObject

@property UIImage *recipeImage;
@property NSString *recipeID;
@property NSString *recipeTitle;
@property NSString *recipeDetails;

- (id)searchForRecipeIsVegan:(BOOL)isVegan IsVegatarian:(BOOL)isVegetarian IsGlutenFree:(BOOL)isGlutenFree IsGrainFree:(BOOL)isGrainFree IsDairyFree:(BOOL)isDairyFree;

- (id)searchByIngredients:(NSString *)ingredients;

@end
