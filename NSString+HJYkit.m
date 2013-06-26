//
//  NSString+kit.h
//
//  Created by hjy
//  use it whatevet you want
//

#import "NSString+kit.h"

@implementation NSString (HJYkit)


-(void)hasSubstring:(NSString *)str
{
    if ([self rangeOfString:str]!=NSNotFound)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}


-(BOOL)isIPv4
{
    static NSString ipv4Regex = @"^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$";
    return  [self matchRegex:ipv4Regex]
}


-(BOOL)matchRegex:(NSString *)regex
{
    //we only support ip4 currently
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern: regex
                                  options:0
                                  error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:self
                                                        options:0
                                                          range:NSMakeRange(0, [self length])];
    return (numberOfMatches == 1 ? TRUE : FALSE);
}

-(BOOL)isUrl
{
    NSURL *tempUrl = [NSURL URLWithString:self];
    if (tempUrl)
    {
        return YES;
    }
    return NO;
}

@end
