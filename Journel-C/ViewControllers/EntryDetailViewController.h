//
//  DetailViewController.h
//  Journel-C
//
//  Created by Trevor Walker on 7/1/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong) Entry *entry;

@end

NS_ASSUME_NONNULL_END
