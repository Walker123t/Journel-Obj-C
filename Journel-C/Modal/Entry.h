//
//  Journal.h
//  Journel-C
//
//  Created by Trevor Walker on 7/1/19.
//  Copyright © 2019 Trevor Walker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

- (instancetype)initWithName:(NSString *)title
                    bodyText:(NSString *)bodyText
                        date:(NSDate *)date;

@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)NSString *bodyText;
@property(nonatomic, strong, nullable)NSDate *date;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryRepresentation;
@end

NS_ASSUME_NONNULL_END
