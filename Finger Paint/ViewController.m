//
//  ViewController.m
//  Finger Paint
//
//  Created by Chloe on 2016-01-22.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *colorPickerView;

@property (nonatomic, strong) DrawView *drawView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawView = [[DrawView alloc] initWithFrame:self.view.bounds];
    self.drawView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.drawView];
    
    [self.view bringSubviewToFront:self.colorPickerView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Color Picker Buttons

- (IBAction)redButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)coralButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:102.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)orangeButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:153.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)tangerineButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:204.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)yellowButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)neonGreenButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:153.0/255.0 green:255.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)greenButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:.0/255.0 green:205.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)tealButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:0.0/255.0 green:153.0/255.0 blue:153.0/255.0 alpha:1.0];
}
- (IBAction)blueButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:0.0/255.0 green:51.0/255.0 blue:204.0/255.0 alpha:1.0];
}
- (IBAction)indigoButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:51.0/255.0 green:0.0/255.0 blue:153.0/255.0 alpha:1.0];
}
- (IBAction)purpleButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:102.0/255.0 green:0.0/255.0 blue:153.0/255.0 alpha:1.0];
}
- (IBAction)magentaButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:204.0/255.0 green:0.0/255.0 blue:153.0/255.0 alpha:1.0];
}
- (IBAction)blackButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:1.0];
}
- (IBAction)eraserButton:(id)sender {
    self.drawView.penColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
}



@end
