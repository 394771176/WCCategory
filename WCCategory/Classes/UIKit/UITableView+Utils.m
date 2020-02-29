//
//  UITableView+Utils.m
//  DrivingTest
//
//  Created by cheng on 2017/11/21.
//  Copyright © 2017年 eclicks. All rights reserved.
//

#import "UITableView+Utils.h"

@implementation UITableView (Utils)

- (CGFloat)totalHeightForCellToIndexPath:(NSIndexPath *)indexPath target:(id<UITableViewDelegate, UITableViewDataSource>)target
{
    CGFloat lastBottom = 0.f;
    if ([target respondsToSelector:@selector(tableView:numberOfRowsInSection:)] && [target respondsToSelector:@selector(tableView:heightForRowAtIndexPath:)]) {
        for (NSInteger sec = 0; sec <= indexPath.section; sec ++) {
            NSInteger rowCount = [target tableView:self numberOfRowsInSection:sec];
            if (sec == indexPath.section) {
                rowCount = indexPath.row;
            }
            for (NSInteger row = 0; row < rowCount; row ++) {
                NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:sec];
                lastBottom += ([target tableView:self heightForRowAtIndexPath:indexPath]);
            }
        }
    }
    return lastBottom;
}

- (CGFloat)totalHeightForHeaderToSection:(NSInteger)section target:(id<UITableViewDelegate,UITableViewDataSource>)target
{
    CGFloat lastBottom = 0.f;
    if ([target respondsToSelector:@selector(tableView:heightForHeaderInSection:)]) {
        for (NSInteger sec = 0; sec < section; sec ++) {
            lastBottom += ([target tableView:self heightForHeaderInSection:sec]);
        }
    }
    return lastBottom;
}

- (CGFloat)totalHeightForFooterToSection:(NSInteger)section target:(id<UITableViewDelegate,UITableViewDataSource>)target
{
    CGFloat lastBottom = 0.f;
    if ([target respondsToSelector:@selector(tableView:heightForFooterInSection:)]) {
        for (NSInteger sec = 0; sec < section; sec ++) {
            lastBottom += ([target tableView:self heightForFooterInSection:sec]);
        }
    }
    return lastBottom;
}

- (CGFloat)totalHeightToSection:(NSInteger)section target:(id<UITableViewDelegate, UITableViewDataSource>)target
{
    CGFloat height = [self totalHeightForCellToIndexPath:[NSIndexPath indexPathForRow:0 inSection:section] target:target];
    height += ([self totalHeightForHeaderToSection:section target:target]);
    height += ([self totalHeightForFooterToSection:section target:target]);
    return height;
}

- (CGFloat)totalHeightToIndexPath:(NSIndexPath *)indexPath target:(id<UITableViewDelegate,UITableViewDataSource>)target
{
    CGFloat height = [self totalHeightForCellToIndexPath:indexPath target:target];
    height += ([self totalHeightForHeaderToSection:indexPath.section + 1 target:target]);
    height += ([self totalHeightForFooterToSection:indexPath.section target:target]);
    return height;
}

@end
