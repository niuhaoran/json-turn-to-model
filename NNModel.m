
#import "NNMOdel.h"

@implementation NNMOdel

+ (instancetype)modelWithDict:(NSDictionary *)dict {
    
    id model = [[self alloc]init];
    
    [model setValuesForKeysWithDictionary:dict];
    return model;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key {}

+ (NSArray *)arrayWithModelArray:(NSArray *)arr {
    
    NSMutableArray *muArr = [NSMutableArray arrayWithCapacity:10];
    
        [arr enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            id model = [self modelWithDict:obj];
            [muArr addObject:model];
        }];
       return muArr.copy;
}
/*
 继承这个类, 如果模型嵌套的话, 重写下面这个方法即可
 */
//-(void)setValue:(id)value forKey:(NSString *)key
//{
//    if ([key isEqualToString:@"img"]) {
//        self.img = [NNNewsDetailImgModel arrayWithModelArray:(NSArray *)value];
//    }else
//    {
//        return [super setValue:value forKey:key];
//    }
//}
//
@end





