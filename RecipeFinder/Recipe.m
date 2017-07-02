//
//  Recipe.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Recipe.h"


@implementation Recipe

- (id)searchForRecipeIsVegan:(BOOL)isVegan IsVegetarian:(BOOL)isVegetarian IsGlutenFree:(BOOL)isGlutenFree IsGrainFree:(BOOL)isGrainFree IsDairyFree:(BOOL)isDairyFree {
    
    NSDictionary *headers = @{@"X-Mashape-Key": @***REMOVED***, @"Accept": @"application/json"};
    UNIUrlConnection *asyncConnection = [[UNIRest get:^(UNISimpleRequest *request) {
        
        if(isVegan == YES) {
            
            NSString *veganURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?diet=vegan&instructionsRequired=true&limitLicense=false&number=20&offset=0&query=vegan+recipes";
            
            request.url = veganURL;
            request.headers = headers;
            
        }else if(isVegetarian == YES) {
            
            NSString *vegetarianURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?diet=vegetarian&instructionsRequired=true&limitLicense=false&number=50&offset=0&query=vegetarian+recipes";
            
            request.url = vegetarianURL;
            request.headers = headers;
            
        }else if (isGlutenFree == YES) {
            
            NSString *glutenFreeURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?instructionsRequired=true&intolerances=gluten&limitLicense=false&number=50&offset=0&query=vegetarian+recipes";
            
            request.url = glutenFreeURL;
            request.headers = headers;
            
        }else if (isGrainFree == YES) {
            
            NSString *grainFreeURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?instructionsRequired=true&intolerances=grain&limitLicense=false&number=50&offset=0&query=grain+free+recipes";
            
            request.url = grainFreeURL;
            request.headers = headers;
            
        }else if (isDairyFree == YES) {
            
            NSString *dairyFreeURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?instructionsRequired=true&intolerances=dairy&limitLicense=false&number=50&offset=0&query=dairy+free+recipes";
            
            request.url = dairyFreeURL;
            request.headers = headers;
            
        }else {
            
            NSString *genericURL = @"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?instructionsRequired=true&limitLicense=false&number=50&offset=0&query=recipes";
            
            request.url = genericURL;
            request.headers = headers;
            
        }
    }] asJsonAsync:^(UNIHTTPJsonResponse *response, NSError *error) {
        
        NSData *rawBody = response.rawBody;
        
        
    }];

    
    return self;
}


- (instancetype)initWithRecipeImage: (NSString *)recipeImage andRecipeID: (NSString *)recipeID andRecipeTitle: (NSString *)recipeTitle andRecipeDetails: (NSMutableArray *)recipeDetails andRecipeIngredientsArray: (NSMutableArray *)recipeIngredientsArray
{
    self = [super init];
    if (self) {
        self.recipeImage = recipeImage;
        self.recipeID = recipeID;
        self.recipeTitle = recipeTitle;
        self.recipeDetails = [[NSMutableArray alloc]initWithArray:recipeDetails];
        self.recipeIngredientsArray = recipeIngredientsArray;
        
        self.isVegan = NO;
        self.isVegetarian = NO;
        self.isGlutenFree = NO;
        self.isGrainFree = NO;
        self.isDiaryFree = NO;
    }
    return self;
}
@end
