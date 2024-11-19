#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <substrate.h>

@interface NCNotificationListView : UIView

@property (nonatomic, assign, readwrite) BOOL shouldBottomViewsRollUnder;
@property (nonatomic, assign, readwrite) BOOL layoutFromBottom;
@property (nonatomic, assign, readwrite) BOOL supportsBottomViewsRollUnder;

@end

@interface NCNotificationMasterList : NSObject

@end

%hook NCNotificationListView

- (void)layoutSubviews {
	%orig;
	self.shouldBottomViewsRollUnder = NO;
	self.supportsBottomViewsRollUnder = NO;
}

%end

%hook NCNotificationMasterList

- (BOOL)isCollapsibleNotificationListSupported {
    return NO;
}

%end