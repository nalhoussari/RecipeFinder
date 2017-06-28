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

@property (nonatomic) NSIndexPath *selectedIndexPath;
@property (nonatomic) NSArray *recipes;

@end

@implementation RecipesTableView

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< Updated upstream
=======
<<<<<<< Updated upstream
    // Do any additional setup after loading the view.
=======
>>>>>>> Stashed changes
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
<<<<<<< Updated upstream
    self.recipes = [NSArray arrayWithArray: [self prepareUserRecipes]];
    self.title = @"My Recipes";

    [self prepareUserRecipes];
=======
    [self prepareUserRecipes];
    self.title = @"My Recipes";

    [self prepareUserRecipes];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.tableView deselectRowAtIndexPath:self.selectedIndexPath animated:YES];
}

#pragma mark - prepare Array of Data

//we need to specify the resipes according to the outcomes that matches the user inputes and their nutritions preferables with API info
- (void) prepareUserRecipes{
    
    //here.. for creating Session for json and populate info out of url of API and add that object to the array: recipes

    
>>>>>>> Stashed changes
>>>>>>> Stashed changes
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.tableView deselectRowAtIndexPath:self.selectedIndexPath animated:YES];
}

<<<<<<< Updated upstream
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

=======
<<<<<<< Updated upstream
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
=======
>>>>>>> Stashed changes

#pragma mark - TableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    RecipeTVC *cell = [tableView dequeueReusableCellWithIdentifier:@"recipeCell"];
//    Recipe *recipe = self.recipes[indexPath.row];
//    
//    //Setting the cell's title
//    NSString *stringTitle = [self.recipes[indexPath.item] title];
//    cell.cellLabel.text = stringTitle;
//
//    
//    //check if the recipe has been downlaoded
//    if(recipe == nil){
//        
//        //Setting the cell's image
//        NSString *imageURLString = [self.recipes[indexPath.item] urlString];
//        NSURL *url = [NSURL URLWithString:imageURLString];
//        
//        NSURLSession *session = [NSURLSession sharedSession];
//        NSURLSessionDownloadTask *downloadRecipeImageTask = [session downloadTaskWithURL:url completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//            // update cell with image in callback.
//            NSData *data = [NSData dataWithContentsOfURL:url];
//                                                                     
//            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//            
//            //to cure a small bug: because this Block won't be excuted till the other code out side are excuted, we need to call the recipeCell at the indexPath to catch the cell before returning it!
//            RecipeTVC * cell = (RecipeTVC *)[self.tableView cellForRowAtIndexPath:indexPath];
//                                                                         
//            recipe.recipeImage = [UIImage imageWithData:data];
//            cell.cellImage.image = recipe.recipeImage;
//            }];
//        }];
//        [downloadRecipeImageTask resume];
//    } else {
//        cell.cellImage.image = recipe.recipeImage;
//
//    }
    return cell;
}

<<<<<<< Updated upstream
//no need for didSelectRowAtIndexPath if we linked segue on storyboard
=======
#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Table view cell tapped at row: %li", (long)indexPath.row);
    //    self.currentlySelectedIndexPath = indexPath;
    
    [self performSegueWithIdentifier:@"recipeDetail" sender:self];
    
    // Needs refactoring for drinks
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
>>>>>>> Stashed changes

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    self.selectedIndexPath = [self.tableView indexPathForSelectedRow];
    
<<<<<<< Updated upstream
    if ([segue.identifier isEqualToString:@"recipeDetail"])
    {
        Recipe *recipe = [self.recipes objectAtIndex:self.selectedIndexPath.row];
        DetailedRecipeViewController *detailedRecipeViewController = segue.destinationViewController;
        detailedRecipeViewController.recipe = recipe;
    }
=======
    if ([segue.identifier isEqualToString:@"recipeDetail"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        //        Recipe *recipe = [self.recipes objectAtIndex:self.selectedIndexPath.row];
        DetailedRecipeViewController *detailedRecipeViewController = segue.destinationViewController;
        detailedRecipeViewController.recipe = self.recipe;
        [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
>>>>>>> Stashed changes
>>>>>>> Stashed changes
}


@end
