$(shell mkdir -p $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib/)
$(shell mkdir -p $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib64/)
$(shell mkdir -p $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib/hw)
$(shell mkdir -p $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib64/hw)

# Symlink to Adreno GLESv2 blobs

$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib/ > /dev/null && ln -s /vendor/lib/egl/libGLESv2_adreno.so libGLESv2_adreno.so && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib64/ > /dev/null && ln -s /vendor/lib64/egl/libGLESv2_adreno.so libGLESv2_adreno.so && popd > /dev/null)

# Symlink to custom audio HAL
$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib/hw/ > /dev/null && ln -s audio.primary.sdm710.so audio.primary.bonito.so && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib64/hw/ > /dev/null && ln -s audio.primary.sdm710.so audio.primary.bonito.so && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib/hw/ > /dev/null && ln -s audio.primary.sdm710.so audio.primary.sargo.so && popd > /dev/null)
$(shell pushd $(PRODUCT_OUT)/$(TARGET_COPY_OUT_SYSTEM)/lib64/hw/ > /dev/null && ln -s audio.primary.sdm710.so audio.primary.sargo.so && popd > /dev/null)

