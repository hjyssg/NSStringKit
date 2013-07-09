//
//  NSString+kit.h
//
//  Created by hjy 
//  use it whatevet you want
//

#import <Foundation/Foundation.h>

@interface NSString (HJYkit)

//check if the string has a substring
-(void)hasSubstring:(NSString *)str;

//check if the string is ipv4
-(BOOL)isIPv4;

//check if the string is url
-(BOOL)isUrl;

//check if the string match a regex pattern
-(BOOL)matchRegex:(NSString *)regex;

//java-like trim. delete leading and trailing whitespace
-(NSString *)trim;


@end
