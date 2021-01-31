#import "RNPermissionHandlerPhotoLibrary.h"
#import <React/RCTUtils.h>

@import Photos;
@import PhotosUI;

@implementation RNPermissionHandlerPhotoLibrary

+ (NSArray<NSString *> * _Nonnull)usageDescriptionKeys {
  return @[@"NSPhotoLibraryUsageDescription"];
}

+ (NSString * _Nonnull)handlerUniqueId {
  return @"macos.permission.PHOTO_LIBRARY";
}

- (void)checkWithResolver:(void (^ _Nonnull)(RNPermissionStatus))resolve
                 rejecter:(void (__unused ^ _Nonnull)(NSError * _Nonnull))reject {
  PHAuthorizationStatus status;

  status = [PHPhotoLibrary authorizationStatus];

  switch (status) {
    case PHAuthorizationStatusNotDetermined:
      return resolve(RNPermissionStatusNotDetermined);
    case PHAuthorizationStatusRestricted:
      return resolve(RNPermissionStatusRestricted);
    case PHAuthorizationStatusDenied:
      return resolve(RNPermissionStatusDenied);
    case PHAuthorizationStatusAuthorized:
      return resolve(RNPermissionStatusAuthorized);
  }
}

- (void)requestWithResolver:(void (^ _Nonnull)(RNPermissionStatus))resolve
                   rejecter:(void (^ _Nonnull)(NSError * _Nonnull))reject {
  [PHPhotoLibrary requestAuthorization:^(__unused PHAuthorizationStatus status) {
    [self checkWithResolver:resolve rejecter:reject];
  }];
}

- (void)openLimitedPhotoLibraryPickerWithResolver:(RCTPromiseResolveBlock _Nonnull)resolve
                                         rejecter:(RCTPromiseRejectBlock _Nonnull)reject {
    reject(@"cannot_open_limited_picker", @"Only available on iOS 14 or higher", nil);
}

@end
