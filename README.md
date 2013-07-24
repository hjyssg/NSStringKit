##NSStringKit: A simple category of NSString
  
www.hjyssg.com  

The source code is under MIT license.  

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

