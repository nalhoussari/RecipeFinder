//
//  Recipe.h
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecipeFinder-Bridging-Header.h"
#import <UNIRest/UNIRest.h>
#import "UIKit/UIKit.h"

@interface Recipe : NSObject

@property NSString *recipeImage;
@property NSString *recipeID;
@property NSString *recipeTitle;
@property NSString *recipeDetails;
@property NSString *userIngredients;


- (id)searchForRecipeIsVegan:(BOOL)isVegan IsVegetarian:(BOOL)isVegetarian IsGlutenFree:(BOOL)isGlutenFree IsGrainFree:(BOOL)isGrainFree IsDairyFree:(BOOL)isDairyFree;

- (instancetype)initWithRecipeImage: (UIImage *)recipeImage andRecipeID: (NSString *)recipeID andRecipeTitle: (NSString *)recipeTitle andRecipeDetails: (NSString *)recipeDetails;

//- (id)searchByIngredients:(NSString *)ingredients;


@end
