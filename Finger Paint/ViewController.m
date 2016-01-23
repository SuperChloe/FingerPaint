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

- (IBAction)redButton:(id)sender {
}
- (IBAction)coralButton:(id)sender {
}
- (IBAction)orangeButton:(id)sender {
}
- (IBAction)tangerineButton:(id)sender {
}
- (IBAction)yellowButton:(id)sender {
}
- (IBAction)neonGreenButton:(id)sender {
}
- (IBAction)greenButton:(id)sender {
}
- (IBAction)tealButton:(id)sender {
}
- (IBAction)blueButton:(id)sender {
}
- (IBAction)indigoButton:(id)sender {
}
- (IBAction)purpleButton:(id)sender {
}
- (IBAction)magentaButton:(id)sender {
}
- (IBAction)blackButton:(id)sender {
}
- (IBAction)eraserButton:(id)sender {
}



@end
