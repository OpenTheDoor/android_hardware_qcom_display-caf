ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf)

display-hals := libgralloc libgenlock libcopybit libvirtual
display-hals += libhwcomposer liboverlay libqdutils libexternal libqservice
display-hals += libmemtrack
<<<<<<< HEAD

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif
=======
>>>>>>> AU_LINUX_ANDROID_KK_2.7_RB1.04.04.01.007.021

ifneq (,$(filter $(QCOM_BOARD_PLATFORMS),$(TARGET_BOARD_PLATFORM)))
    include $(call all-named-subdir-makefiles,$(display-hals))
else
ifneq ($(filter msm7x27a msm8226 msm8x26 msm8960 msm8974 msm8x74,$(TARGET_BOARD_PLATFORM)),)
    #This is for mako since it doesn't have the QCOM make functions
    include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif
endif
