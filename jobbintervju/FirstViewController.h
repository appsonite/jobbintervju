//
//  FirstViewController.h
//  jobbintervju
//
//  Created by Robin Grønvold on 3/26/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    NSArray *questionArray;
    NSArray *answerArray;
    UIPageControl *pageControl;
    UITextView *questionText;
    
    
}

@property (strong, nonatomic) NSArray *questionArray;
@property (strong, nonatomic) NSArray *answerArray;
@property (nonatomic, retain) IBOutlet UIScrollView *scrollView1;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) IBOutlet UITextView *questionText;


- (IBAction) changePage;
- (void) animateToView:(UIView *)newView;

@end
