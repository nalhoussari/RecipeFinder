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
//@property NSString *recipeDetails;
@property NSMutableArray *recipeDetails;
@property NSString *userIngredients;
@property NSMutableArray *recipeIngredientsArray;

@property (nonatomic) BOOL isVegan;
@property (nonatomic) BOOL isVegetarian;
@property (nonatomic) BOOL isGlutenFree;
@property (nonatomic) BOOL isGrainFree;
@property (nonatomic) BOOL isDiaryFree;


- (id)searchForRecipeIsVegan:(BOOL)isVegan IsVegetarian:(BOOL)isVegetarian IsGlutenFree:(BOOL)isGlutenFree IsGrainFree:(BOOL)isGrainFree IsDairyFree:(BOOL)isDairyFree;


- (instancetype)initWithRecipeImage: (NSString *)recipeImage andRecipeID: (NSString *)recipeID andRecipeTitle: (NSString *)recipeTitle andRecipeDetails: (NSMutableArray *)recipeDetails andRecipeIngredientsArray: (NSMutableArray *)recipeIngredientsArray;


//- (id)searchByIngredients:(NSString *)ingredients;


@end
