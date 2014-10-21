//
//  MainView.m
//  HeatCold
//
//  Created by rohan mahajan on 10/21/14.
//  Copyright (c) 2014 rohan mahajan. All rights reserved.
//

#import "MainView.h"

@implementation MainView {
    UILabel * heatLabel;
    UILabel * coldLabel;
    UISlider *heatSlider;
    UISlider *coldSlider;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setColor];
        [self setHeatLabel:@"HEAT"];
        [self setColdLabel:@"COLD"];
        [self setHeatSlider];
        [self setColdSlider];
    }
    return self;
}

- (void) setColor {
    UIColor *customBlueColor = [UIColor colorWithRed: 0 green: 0/255.0 blue:0/255.0 alpha: 1.0];
    self.backgroundColor = customBlueColor;
}

-(void) setHeatLabel: (NSString * )heat{
    heatLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 160, 100, 50)];
    heatLabel.backgroundColor =[UIColor redColor];
    [self addSubview:heatLabel];
    heatLabel.textAlignment = NSTextAlignmentCenter;
    heatLabel.enabled = NO;
    heatLabel.textColor = [UIColor blackColor];
    heatLabel.text = heat;
    [self addSubview: heatLabel];
}

-(void) setHeatSlider{
    heatSlider = [[UISlider alloc] initWithFrame:CGRectMake(150, 160, 130, 50)];
    [heatSlider setMinimumTrackTintColor:[UIColor redColor]];
    [self addSubview: heatSlider];
}

-(void) setColdSlider{
    coldSlider = [[UISlider alloc] initWithFrame:CGRectMake(150, 280, 130, 50)];
    [self addSubview: coldSlider];
}

-(void) setColdLabel: (NSString * ) cold{
    coldLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 280, 100, 50)];
    coldLabel.backgroundColor =[UIColor blueColor];
    coldLabel.textColor = [UIColor whiteColor];
    [self addSubview:coldLabel];
    coldLabel.textAlignment = NSTextAlignmentCenter;
    coldLabel.enabled = NO;
    coldLabel.text = cold;
    [self addSubview: coldLabel];
}

@end
