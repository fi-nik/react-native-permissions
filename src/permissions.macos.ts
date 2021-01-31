import type {AndroidPermissionMap} from './permissions.android';
import {IOSPermissionMap} from './permissions.ios';
import type {WindowsPermissionMap} from './permissions.windows';

//TODO: Add aditional permissions for macos
const MACOS = Object.freeze({
  CAMERA: 'macos.permission.CAMERA',
  LOCATION_ALWAYS: 'macos.permission.LOCATION_ALWAYS',
  LOCATION_WHEN_IN_USE: 'macos.permission.LOCATION_WHEN_IN_USE',
  MEDIA_LIBRARY: 'macos.permission.MEDIA_LIBRARY',
  PHOTO_LIBRARY: 'macos.permission.PHOTO_LIBRARY',
  PHOTO_LIBRARY_ADD_ONLY: 'macos.permission.PHOTO_LIBRARY_ADD_ONLY',
} as const);

export type MacosPermissionMap = typeof MACOS;

export const PERMISSIONS = Object.freeze({
  ANDROID: {} as AndroidPermissionMap,
  IOS: {} as IOSPermissionMap,
  WINDOWS: {} as WindowsPermissionMap,
  MACOS,
} as const);
