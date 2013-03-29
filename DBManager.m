//
//  DBManager.m
//  kaloriKladd
//
//  Created by Zeeshan Ahmed on 3/20/13.
//  Copyright (c) 2013 appsonite. All rights reserved.
//

#import "DBManager.h"

static DBManager *instance=nil;

@implementation DBManager
@synthesize arrayTrainRecords;

+(DBManager *)sharedInstance
{
    if (instance==nil)
    {
        instance=[[[self class] alloc] init];
    }
    
    return instance;
}

+(void)copyDataBaseIfNeeded:(NSString *)dbName
{
    //Using NSFileManager we can perform many file system operations.
	NSFileManager *fileManager = [NSFileManager defaultManager];
	NSError *error;
	NSString *dbPath = [self getDBPath:dbName];
	BOOL success = [fileManager fileExistsAtPath:dbPath];
	
	if(!success)
    {
		
     NSString *defaultDBPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:dbName];
     success = [fileManager copyItemAtPath:defaultDBPath toPath:dbPath error:&error];
		
		if (!success)
        NSAssert1(0, @"Failed to create writable database file with message '%@'.", [error localizedDescription]);
	}
}

+(NSString *)getDBPath:(NSString *)dbName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory , NSUserDomainMask, YES);
	NSString *documentsDir = [paths objectAtIndex:0];
	return [documentsDir stringByAppendingPathComponent:dbName];
}

+ (void) finalizeStatements
{
    
}

@end
