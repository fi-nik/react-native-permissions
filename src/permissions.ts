import type {AndroidPermissionMap} from './permissions.android';
import type {IOSPermissionMap} from './permissions.ios';
import type {WindowsPermissionMap} from './permissions.windows';
import type {MacosPermissionMap} from './permissions.macos';

export const PERMISSIONS = Object.freeze({
  ANDROID: {} as AndroidPermissionMap,
  IOS: {} as IOSPermissionMap,
  WINDOWS: {} as WindowsPermissionMap,
  MACOS: {} as MacosPermissionMap,
} as const);
