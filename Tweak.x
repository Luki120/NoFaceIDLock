#import <spawn.h>
#import <AudioToolbox/AudioServices.h>




%hook SBReachabilityManager


- (void)_updateReachabilityModeActive:(BOOL)arg1 {


       %orig;


       if (arg1) {


              AudioServicesPlaySystemSound(1521);


              pid_t pid;
              const char *args[] = {"killall", "backboardd", NULL};
              posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char *const *)args, NULL);


       }


}


%end

