//
//  DBManager.h
//  kaloriKladd
//
//  Created by Zeeshan Ahmed on 3/20/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBManager : NSObject
{
    NSMutableArray *arrayTrainRecords;
}
@property(nonatomic,retain)NSMutableArray *arrayTrainRecords;

+(DBManager *)sharedInstance;

+(void)copyDataBaseIfNeeded:(NSString *)dbName;
+(NSString *)getDBPath:(NSString *)dbName;



@end
