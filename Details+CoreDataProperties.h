//
//  Details+CoreDataProperties.h
//  CoreDataTest
//
//  Created by Akhil Tirumalasetty on 2/23/16.
//  Copyright © 2016 Akhil Tirumalasetty. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Details.h"

NS_ASSUME_NONNULL_BEGIN

@interface Details (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *number;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) Pdetails *pdetails;

@end

NS_ASSUME_NONNULL_END
