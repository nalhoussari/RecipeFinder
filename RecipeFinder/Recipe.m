//
//  Recipe.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Recipe.h"


@implementation Recipe

- (id)searchForRecipeIsVegan:(BOOL)isVegan IsVegatarian:(BOOL)isVegetarian IsGlutenFree:(BOOL)isGlutenFree IsGrainFree:(BOOL)isGrainFree IsDairyFree:(BOOL)isDairyFree {
    
    NSDictionary *headers = @{@"X-Mashape-Key": @"0cnoKQkNG2mshdJX4uQedT3zcqI4p1W8QrHjsnKZcWPMzUW7Qu", @"Accept": @"application/json"};
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


- (instancetype)initWithRecipeImage: (UIImage *)recipeImage andRecipeID: (NSString *)recipeID andRecipeTitle: (NSString *)recipeTitle andRecipeDetails: (NSString *)recipeDetails
{
    self = [super init];
    if (self) {
        self.recipeImage = recipeImage;
        self.recipeID = recipeID;
        self.recipeTitle = recipeTitle;
        self.recipeDetails = recipeDetails;
    }
    return self;
}

//- (id)searchByIngredients:(NSString *)ingredients {
//    
//    NSString *formattedIngredients = [ingredients stringByReplacingOccurrencesOfString:@"," withString:@"%2C"];
//    NSString *ingredientsURL = [NSString stringWithFormat:@"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?fillIngredients=false&ingredients=%@&limitLicense=false&number=30&ranking=1", formattedIngredients];
//    
//    
//    NSDictionary *headers = @{@"X-Mashape-Key": @"0cnoKQkNG2mshdJX4uQedT3zcqI4p1W8QrHjsnKZcWPMzUW7Qu", @"Accept": @"application/json"};
//
//    UNIUrlConnection *asyncConnection = [[UNIRest get:^(UNISimpleRequest *request) {
//
//        request.url = ingredientsURL;
//        request.headers = headers;
//        
//    }] asJsonAsync:^(UNIHTTPJsonResponse *response, NSError *error) {
//        
//        NSData *rawBody = response.rawBody;
//        
//        NSArray *recipeArray = [NSJSONSerialization JSONObjectWithData: rawBody options: NSJSONReadingMutableContainers error: &error];
//        
//        if (!recipeArray) {
//            NSLog(@"Error parsing JSON: %@", error);
//        } else {
//            for(NSDictionary *dictionary in recipeArray) {
//                self.recipeImage = [dictionary objectForKey:@"image"];
//                self.recipeID = [dictionary objectForKey:@"id"];
//                self.recipeTitle = [dictionary objectForKey:@"title"];
//        
//        
//                NSString *recipeDetailsURL = [ NSString stringWithFormat:@"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/%@/analyzedInstructions?stepBreakdown=false", self.recipeID];
//        
//                UNIUrlConnection *anothersyncConnection = [[UNIRest get:^(UNISimpleRequest *newRequest) {
//            
//                    newRequest.url = recipeDetailsURL;
//                    newRequest.headers = headers;
//            
//                }] asJsonAsync:^(UNIHTTPJsonResponse *response, NSError *error) {
//            
//                    NSData *rawBody = response.rawBody;
//
//                    NSArray *recipeDetails = [NSJSONSerialization JSONObjectWithData: rawBody options: NSJSONReadingMutableContainers error: &error];
//            
//                    if (!recipeDetails) {
//                        NSLog(@"Error parsing JSON: %@", error);
//                    } else {
//                        for(NSDictionary *dictionary in recipeDetails) {
//                            NSArray *steps = [dictionary objectForKey:@"steps"];
//                            for(NSDictionary *step in steps) {
//                                self.recipeDetails = [step objectForKey:@"step"];
//                            }
//                        }
//                    }
//                }];
//            }
//        }
//    }];
//    
//    return self;
//}
@end
