//
//  SimpleTableCell.h
//  jobbintervju
//
//  Created by Robin Grønvold on 3/28/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableCell : UITableViewCell{
    BOOL *checkboxSelected;
}

//The above lines of code defines three instance variables that later to be associated with the tabl
// cell view in Interface Builder. The keyword “@property” is used to declare a property within a
//class in the following form:
//
//                  @property (attributes) type name;
//
//Referring to the lines of code above, weak and nonatomic are the attributes of the property. UILab
//and UIImageView are the types, while the “nameLabel”, “prepTimeLabel” and “thumbnailImageView” are
//the names.
//
//


@property (weak, nonatomic) IBOutlet UIButton *checkboxButton;

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

- (IBAction)checkboxButton:(id)sender;

@end
