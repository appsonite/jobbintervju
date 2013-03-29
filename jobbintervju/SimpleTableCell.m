//
//  SimpleTableCell.m
//  jobbintervju
//
//  Created by Robin Grønvold on 3/28/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell

//The “@synthesize” keyword tells compiler to automatically generate code for accessing the properties
//we declared earlier. If you forget to include this directive, Xcode will complain:


@synthesize checkboxButton = _checkboxButton;
@synthesize nameLabel = _nameLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (IBAction)checkboxButton:(id)sender{
	if (checkboxSelected == 0){
		[_checkboxButton setSelected:YES];
		checkboxSelected = 1;
	} else {
		[_checkboxButton setSelected:NO];
		checkboxSelected = 0;
	}
}
@end
