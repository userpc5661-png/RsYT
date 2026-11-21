# RiseYT Lite — core features only, embedded into a signed YouTube IPA.
TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RiseYTLite
RiseYTLite_FILES = Tweak.x
RiseYTLite_CFLAGS = -fobjc-arc
RiseYTLite_FRAMEWORKS = UIKit Foundation AVFoundation AVKit CoreMedia Security
# Internal Logos generator: no external CydiaSubstrate library is linked.
RiseYTLite_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk
