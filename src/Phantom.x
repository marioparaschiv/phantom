%hook UIScreen

- (BOOL)isCaptured {
   return NO;
}

%end

%hook NSNotificationCenter

- (void)addObserver: (id)observer selector: (SEL)selector name: (NSNotificationName)name object: (id)obj {
   if (name == UIApplicationUserDidTakeScreenshotNotification) {
      return;
   }

   %orig;
}

%end

%ctor {
   %init;
}
