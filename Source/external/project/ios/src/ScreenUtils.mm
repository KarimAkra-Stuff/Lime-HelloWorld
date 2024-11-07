#import "ScreenUtils.hpp"

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

void getSafeAreaInsets(double* top, double* bottom, double* left, double* right)
{
        if (@available(iOS 11, *))
        {
                UIWindow* window = [UIApplication sharedApplication].windows[0];
                UIEdgeInsets safeAreaInsets = window.safeAreaInsets;
                float scale = [UIScreen mainScreen].scale;

                (*top) = safeAreaInsets.top * scale;
                (*bottom) = safeAreaInsets.bottom * scale;
                (*left) = safeAreaInsets.left * scale;
                (*right) = safeAreaInsets.right * scale;

                return;
        }

        (*top) = 0.0;
        (*bottom) = 0.0;
        (*left) = 0.0;
        (*right) = 0.0;
}
