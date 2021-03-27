<<<<<<< HEAD
#import <AudioToolbox/AudioServices.h>
#import <spawn.h>




@interface SBReachabilityManager : NSObject
@end
=======
#import <spawn.h>
#import <AudioToolbox/AudioServices.h>
>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56




%hook SBReachabilityManager


- (void)_updateReachabilityModeActive:(BOOL)arg1 {


       %orig;


       if (arg1) {


              AudioServicesPlaySystemSound(1521);


              pid_t pid;
<<<<<<< HEAD
              const char* args[] = {"sbreload", NULL, NULL, NULL};
              posix_spawn(&pid, "/usr/bin/sbreload", NULL, NULL, (char* const*)args, NULL);
=======
              const char *args[] = {"killall", "backboardd", NULL};
              posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char *const *)args, NULL);
>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56


       }


}


<<<<<<< HEAD
%end
=======
%end

>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56
