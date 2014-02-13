//
//  Book.h
//  BookReading
//
//  Created by Thabib on 06/02/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Book : NSManagedObject

@property (nonatomic, retain) NSString * bookName;
@property (nonatomic, retain) NSString * authorName;
@property (nonatomic, retain) NSNumber * totalPages;
@property (nonatomic, retain) NSNumber * pagesCompleted;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSNumber * bookStatus;

@end
