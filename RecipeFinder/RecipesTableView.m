//
//  RecipesTableView.m
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "RecipesTableView.h"
#import "RecipeTVC.h"

@interface RecipesTableView ()

@property (nonatomic) NSMutableArray *recipes;

@end

@implementation RecipesTableView

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.recipes = [NSMutableArray array];
    
    
    //    self.recipes = [NSArray arrayWithArray: [self prepareUserRecipes]];
    self.title = @"My Recipes";
    
    [self prepareUserRecipes];
    
}

#pragma mark - prepare Array of Data

//we need to specify the resipes according to the outcomes that matches the user inputes and their nutritions preferables with API info
- (void) prepareUserRecipes{
    
    //here.. for creating Session for json and populate info out of url of API and add that object to the array: recipes
    
    NSString *formattedIngredients = [self.recipe.userIngredients stringByReplacingOccurrencesOfString:@"," withString:@"%2C"];
    NSString *ingredientsURL = [NSString stringWithFormat:@"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients?fillIngredients=false&ingredients=%@&limitLicense=false&number=30&ranking=1", formattedIngredients];
    
    
    NSDictionary *headers = @{@"X-Mashape-Key": @***REMOVED***, @"Accept": @"application/json"};
    
    UNIUrlConnection *asyncConnection = [[UNIRest get:^(UNISimpleRequest *request) {
        
        request.url = ingredientsURL;
        request.headers = headers;
        
    }] asJsonAsync:^(UNIHTTPJsonResponse *response, NSError *error) {
        
        NSData *rawBody = response.rawBody;
        
        NSArray *recipeArray = [NSJSONSerialization JSONObjectWithData: rawBody options: NSJSONReadingMutableContainers error: &error];
        
        if (!recipeArray) {
            NSLog(@"Error parsing JSON: %@", error);
        } else {
            for(NSDictionary *dictionary in recipeArray) {
                NSString *aPIRecipeImage = [dictionary objectForKey:@"image"];
                NSString *stringRecipeID = [dictionary objectForKey:@"id"];
                NSString *stringRecipeTitle = [dictionary objectForKey:@"title"];
                
                
                NSString *recipeDetailsURL = [ NSString stringWithFormat:@"https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/%@/analyzedInstructions?stepBreakdown=false", stringRecipeID];
                
                UNIUrlConnection *anothersyncConnection = [[UNIRest get:^(UNISimpleRequest *newRequest) {
                    
                    newRequest.url = recipeDetailsURL;
                    newRequest.headers = headers;
                    
                }] asJsonAsync:^(UNIHTTPJsonResponse *response, NSError *error) {
                    
                    NSData *rawBody = response.rawBody;
                    
                    NSArray *recipeDetails = [NSJSONSerialization JSONObjectWithData: rawBody options: NSJSONReadingMutableContainers error: &error];
                    
                    if (!recipeDetails) {
                        NSLog(@"Error parsing JSON: %@", error);
                    } else {
                        for(NSDictionary *dictionary in recipeDetails) {
                            NSArray *steps = [dictionary objectForKey:@"steps"];
                            for(NSDictionary *step in steps) {
                                NSString *stringRecipeDetails = [step objectForKey:@"step"];
                                
                                //creating a recipe object and storing it in the array
                                self.recipe = [[Recipe alloc] initWithRecipeImage:aPIRecipeImage andRecipeID:stringRecipeID andRecipeTitle:stringRecipeTitle andRecipeDetails:stringRecipeDetails];
                                
                                [self.recipes addObject:self.recipe];
                                
                            }
                        }
                    }
                    [self.tableView reloadData];
                }];
            }
        }
    }];
}

#pragma mark - TableView DataSource

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.recipes.count;
}

#pragma mark - TableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    RecipeTVC *cell = [tableView dequeueReusableCellWithIdentifier:@"recipeCell"];
    Recipe *aRecipe = [self.recipes objectAtIndex:indexPath.row];
    [cell configureCellWithRecipe:aRecipe];
    NSURL *imageURL = [NSURL URLWithString:aRecipe.recipeImage];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    cell.cellImage.image = [UIImage imageWithData:imageData];
    cell.cellLabel.text = aRecipe.recipeTitle;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"recipeDetail" sender:self];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"recipeDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        //Recipe *recipe = [self.recipes objectAtIndex:self.selectedIndexPath.row];
        DetailedRecipeViewController *detailedRecipeViewController = segue.destinationViewController;
        //            NSLog(@"the recipe @%", [self.recipes objectAtIndex:indexPath.row]);
        detailedRecipeViewController.recipe = [self.recipes objectAtIndex:indexPath.row];
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}
@end
