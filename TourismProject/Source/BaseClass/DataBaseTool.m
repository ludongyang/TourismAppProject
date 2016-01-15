//
//  DataBaseTool.m
//  TourismApp
//
//  Created by lanou3g on 16/1/15.
//  Copyright © 2016年 王欣. All rights reserved.
//

#import "DataBaseTool.h"
@interface DataBaseTool()
@property(nonatomic,strong)NSMutableArray *dataArray;
@end
@implementation DataBaseTool

+(instancetype)shareDataBaseTool{
    static DataBaseTool * tool = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!tool) {
            tool = [[DataBaseTool alloc]init];
        }
    });return tool;
}
-(void)getDataSourceByUrlString:(NSString *)urlString passData:(Block)blockData{
    NSURLSessionConfiguration * configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager * manager = [[AFURLSessionManager alloc]initWithSessionConfiguration:configuration];
    NSURL * url = [NSURL URLWithString:urlString];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLSessionDataTask * dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"数据解析错误Error:%@",error);
        }else{
            NSLog(@"当前线程%@",[NSThread currentThread]);
            blockData(responseObject);
      
        }
    }];
    [dataTask resume];
    
    
    
    
}
@end
