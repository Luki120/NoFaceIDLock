ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
TARGET := iphone:clang:latest:latest


<<<<<<< HEAD
=======
INSTALL_TARGET_PROCESSES = SpringBoard


>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56
include $(THEOS)/makefiles/common.mk


TWEAK_NAME = ReachSpring

<<<<<<< HEAD
=======

>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56
ReachSpring_FILES = Tweak.x
ReachSpring_CFLAGS = -fobjc-arc


<<<<<<< HEAD
include $(THEOS_MAKE_PATH)/tweak.mk


after-install::
	install.exec "sbreload"
=======
include $(THEOS_MAKE_PATH)/tweak.mk    
            
>>>>>>> 3f3118c209af22c73700194fe63a89f1bec84c56
