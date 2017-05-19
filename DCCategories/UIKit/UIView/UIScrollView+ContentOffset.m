//
//  UIScrollView+ContentOffset.m
//  DCCategories
//
//  Created by quanzhizu on 2017/5/19.
//  Copyright © 2017年 quanzhizud2c. All rights reserved.
//

#import "UIScrollView+ContentOffset.h"

@implementation UIScrollView (ContentOffset)

-(void)setContentOffsetX:(CGFloat)contentOffsetX{
    
    self.contentOffset = CGPointMake(contentOffsetX, self.contentOffsetY);
    
}

-(void)setContentOffsetY:(CGFloat)contentOffsetY{
    
    self.contentOffset = CGPointMake(self.contentOffsetX, contentOffsetY);
}

-(CGFloat)contentOffsetX{
    
    return self.contentOffset.x;
}

-(CGFloat)contentOffsetY{
    
    return self.contentOffset.y;
}


-(void)setContentSizeWidth:(CGFloat)contentSizeWidth{
    
    self.contentSize = CGSizeMake(contentSizeWidth, self.contentSizeHeight);
}


-(void)setContentSizeHeight:(CGFloat)contentSizeHeight{
    
    self.contentSize = CGSizeMake(self.contentSizeWidth, contentSizeHeight);
    
}


-(CGFloat)contentSizeHeight{
    return self.contentSize.height;
}

-(CGFloat)contentSizeWidth{
    return self.contentSize.width;
}

@end
