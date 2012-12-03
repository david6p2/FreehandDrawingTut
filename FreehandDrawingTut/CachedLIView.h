//
//  CachedLIView.h
//  FreehandDrawingTut
//
//  Created by David Cespedes on 30/11/12.
//  Copyright (c) 2012 LSR Marketing Service. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CachedLIView : UIView
@property (strong, nonatomic) IBOutlet UILabel *cordenates;
@property (strong, nonatomic) IBOutlet UIButton *eraseButton;
- (IBAction)erasePathAction:(id)sender;


@end
