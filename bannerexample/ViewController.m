//
//  ViewController.m
//  bannerexample
//
//  Created by Medma macmini on 01/01/15.
//  Copyright (c) 2015 medma. All rights reserved.
//

#import "ViewController.h"

#import "GADBannerView.h"
#import "GADRequest.h"





@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.bannerview.adUnitID = @"ca-app-pub-2829453849535915/5575089380";
    self.bannerview.rootViewController = self;
    
    
    GADRequest *request = [GADRequest request];
    request.testDevices = @[ @"e69bb598ecbf6e0e06b9f0e4cfe845bf" ];
    // Enable test ads on simulators.
   // request.testDevices = @[ GAD_SIMULATOR_ID ];
    [self.bannerview loadRequest:request];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
