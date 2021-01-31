#import "RNPermissionHandlerPhotoLibraryAddOnly.h"

@import Photos;

@implementation RNPermissionHandlerPhotoLibraryAddOnly

+ (NSArray<NSString *> * _Nonnull)usageDescriptionKeys {
  return @[@"NSPhotoLibraryAddUsageDescription"];
}

+ (NSString * _Nonnull)handlerUniqueId {
  return @"macos.permission.PHOTO_LIBRARY_ADD_ONLY";
}

- (void)checkWithResolver:(void (^ _Nonnull)(RNPermissionStatus))resolve
                 rejecter:(void (__unused ^ _Nonnull)(NSError * _Nonnull))reject {
    return resolve(RNPermissionStatusNotAvailable);
}

- (void)requestWithResolver:(void (^ _Nonnull)(RNPermissionStatus))resolve
                   rejecter:(void (^ _Nonnull)(NSError * _Nonnull))reject {
    return resolve(RNPermissionStatusNotAvailable);
}

@end
