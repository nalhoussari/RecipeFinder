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

@property (nonatomic) NSArray *recipes;

@end

@implementation RecipesTableView

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
//    self.recipes = [NSArray arrayWithArray: [self prepareUserRecipes]];
    self.title = @"My Recipes";

    [self prepareUserRecipes];
}

#pragma mark - prepare Array of Data

//we need to specify the resipes according to the outcomes that matches the user inputes and their nutritions preferables with API info
- (void) prepareUserRecipes{
    
    //here.. for creating Session for json and populate info out of url of API and add that object to the array: recipes
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

