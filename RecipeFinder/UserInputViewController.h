//
//  UserInputViewController.h
//  RecipeFinder
//
//  Created by Noor Alhoussari on 2017-06-26.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "ViewController.h"

@interface UserInputViewController : ViewController
@property (weak, nonatomic) IBOutlet UITextField *userInputTextField;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;

@property (nonatomic) BOOL isVagan;
@property (nonatomic) BOOL isVegetarian;
@property (nonatomic) BOOL isGlutenFree;
@property (nonatomic) BOOL isGrainFree;
@property (nonatomic) BOOL isDiaryFree;


@end
