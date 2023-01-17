ifneq ($(filter idol3 kiwi, $(TARGET_DEVICE)),)

IMAGE_GZ := device/generic/msm8939/shared/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/Image.gz
DTB := $(wildcard device/generic/msm8939/shared/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/msm8939-*-$(TARGET_DEVICE).dtb)

$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB)
	cat $(IMAGE_GZ) $(DTB) > $@

droidcore: $(PRODUCT_OUT)/kernel

endif
