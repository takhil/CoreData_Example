//
//  ViewController.h
//  CoreDataTest
//
//  Created by Akhil Tirumalasetty on 2/23/16.
//  Copyright © 2016 Akhil Tirumalasetty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Details+CoreDataProperties.h"
#import "Pdetails+CoreDataProperties.h"

@interface ViewController : UIViewController

{
    
    
    __weak IBOutlet UITextField *no;
    
    
    __weak IBOutlet UITextField *name;
    
    
    __weak IBOutlet UITextField *age;
    
    
    __weak IBOutlet UITextField *study;
}
- (IBAction)SaveButtonAction:(id)sender;
- (IBAction)LoadButtonAction:(id)sender;

@end

