//
//  Journal.m
//  Journel-C
//
//  Created by Trevor Walker on 7/1/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithName:(NSString *)title bodyText:(NSString *)bodyText date:(NSDate *)date;
{
    self = [super init];
    if (self != nil) {
        _title = title;
        _bodyText = bodyText;
        _date = date;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *title = dictionary[@"title"];
    NSString *bodyText = dictionary[@"bodyText"];
    NSDate *date = dictionary[@"date"];
    return [self initWithName:title bodyText:bodyText date:date];
}

// MARK: - Helpers
- (NSDictionary *)dictionaryRepresentation
{
    return @{
             @"title": self.title,
             @"bodyText": self.bodyText,
             @"date": self.date
             };
}

@end
