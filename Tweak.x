#import <AudioToolbox/AudioServices.h>
#import <spawn.h>




@interface SBReachabilityManager : NSObject
@end




%hook SBReachabilityManager


- (void)_updateReachabilityModeActive:(BOOL)arg1 {


       %orig;


       if (arg1) {


              AudioServicesPlaySystemSound(1521);


              pid_t pid;
              const char* args[] = {"sbreload", NULL, NULL, NULL};
              posix_spawn(&pid, "/usr/bin/sbreload", NULL, NULL, (char* const*)args, NULL);


       }


}


%end