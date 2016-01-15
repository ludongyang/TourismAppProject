//
//  DataBaseTool.h
//  TourismApp
//
//  Created by lanou3g on 16/1/15.
//  Copyright © 2016年 王欣. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^Block)(NSDictionary * dict);
@interface DataBaseTool : NSObject
-(void)getDataSourceByUrlString:(NSString*)urlString passData:(Block)blockData;
+(instancetype)shareDataBaseTool;
@end
