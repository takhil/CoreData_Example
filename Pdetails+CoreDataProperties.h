//
//  Pdetails+CoreDataProperties.h
//  CoreDataTest
//
//  Created by Akhil Tirumalasetty on 2/23/16.
//  Copyright © 2016 Akhil Tirumalasetty. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Pdetails.h"

NS_ASSUME_NONNULL_BEGIN

@interface Pdetails (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *age;
@property (nullable, nonatomic, retain) NSString *study;
@property (nullable, nonatomic, retain) Details *details;

@end

NS_ASSUME_NONNULL_END
