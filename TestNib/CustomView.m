//
//  CustomView.m
//  TestNib
//
//  Created by Bahry Yasin on 18/03/2014.
//  Copyright (c) 2014 FalconsSoft. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

-(id)init
{
    self = [super init];
    
    if(self)
    {
        UINib *nibname = [UINib nibWithNibName:@"CustomView" bundle:[NSBundle mainBundle]];
        NSArray *arNibs = [nibname instantiateWithOwner:nibname options:nil];
        
        for(id obj in arNibs)
        {
            if([obj isKindOfClass:[CustomView class]])
            {
                self = (CustomView*)obj;
                break;
            }
        }
    }
    
    return self;
}

-(IBAction)hitMe
{
    NSLog(@"Hello");
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
