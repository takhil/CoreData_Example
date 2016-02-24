//
//  ViewController.m
//  CoreDataTest
//
//  Created by Akhil Tirumalasetty on 2/23/16.
//  Copyright © 2016 Akhil Tirumalasetty. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveButtonAction:(id)sender {
    
    
    AppDelegate *appdelegate=(AppDelegate *)[[UIApplication sharedApplication]delegate];
    
    NSManagedObjectContext *context = [appdelegate managedObjectContext];
    
    Details *obj=[NSEntityDescription insertNewObjectForEntityForName:@"Details" inManagedObjectContext:context];
    
    Pdetails *obj1=[NSEntityDescription insertNewObjectForEntityForName:@"Pdetails" inManagedObjectContext:context];
    
    obj.number=no.text;
    obj.name=name.text;
    obj1.age=age.text;
    obj1.study=study.text;
    
    obj.pdetails=obj1;
    
    [appdelegate saveContext];
    
    NSLog(@"SAVED SuCESSFULLY");
    
    no.text=@"";
    name.text=@"";
    age.text=@"";
    study.text=@"";
    
    
    
}

- (IBAction)LoadButtonAction:(id)sender {
    
    
    AppDelegate *object = [UIApplication sharedApplication].delegate;
    NSManagedObjectContext *context = [object managedObjectContext];
    

    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Details" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(number=%@ AND name=%@)",no.text,name.text];
    [fetchRequest setPredicate:predicate];

    
    
    NSArray *array=[[context executeFetchRequest:fetchRequest error:nil] filteredArrayUsingPredicate:predicate];
    
    NSLog(@"ARRAY %@",array);
    
    if(array.count>0)
    {
        Details *obj=[array objectAtIndex:0];
        name.text=obj.name;
        age.text=obj.pdetails.age;
        study.text=obj.pdetails.study;
    }
    else
    {
        NSLog(@" Array value is NIL");
    }
    

    
   

    
}
@end
