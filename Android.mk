#
# Copyright 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifneq ($(filter sf340n,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# ADSP
ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 adsp.b06 adsp.b07 \
    adsp.b08 adsp.b09 adsp.b10 adsp.b11 adsp.b12 adsp.b13 adsp.b14 adsp.mdt

ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(ADSP_IMAGES)))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)

# CMNLIB 32/64
CMN_IMAGES := \
    cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib64.mdt \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)

# CPPF
CPPF_IMAGES := \
    cppf.b00 cppf.b01 cppf.b02 cppf.b03 cppf.b04 cppf.b05 cppf.b06 cppf.mdt

CPPF_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CPPF_IMAGES)))
$(CPPF_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPPF firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPPF_SYMLINKS)

# csfido
CSFIDO_IMAGES := \
    csfido.b00 csfido.b01 csfido.b02 csfido.b03 csfido.b04 csfido.b05 csfido.b06 csfido.mdt

CSFIDO_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CSFIDO_IMAGES)))
$(CSFIDO_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CSFIDO firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CSFIDO_SYMLINKS)

# csfp_app
CSFP_IMAGES := \
    csfp_app.b00 csfp_app.b01 csfp_app.b02 csfp_app.b03 csfp_app.b04 csfp_app.b05 csfp_app.b06 csfp_app.mdt

CSFP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(CSFP_IMAGES)))
$(CSFP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CSFP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CSFP_SYMLINKS)

# dhsecapp
DHSECAPP_IMAGES := \
    dhsecapp.b00 dhsecapp.b01 dhsecapp.b02 dhsecapp.b03 dhsecapp.b04 dhsecapp.b05 dhsecapp.b06 dhsecapp.mdt

DHSECAPP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(DHSECAPP_IMAGES)))
$(DHSECAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DHSECAPP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DHSECAPP_SYMLINKS)

# gptest
GPTEST_IMAGES := \
    gptest.b00 gptest.b01 gptest.b02 gptest.b03 gptest.b04 gptest.b05 gptest.b06 gptest.mdt

GPTEST_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(GPTEST_IMAGES)))
$(GPTEST_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GPTEST firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GPTEST_SYMLINKS)

# ISDB
ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.b04 isdbtmm.b05 \
    isdbtmm.b06 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

# MBA
MBA_IMAGES := mba.mbn

MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MBA_IMAGES)))
$(MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINKS)

# MODEM
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b03 modem.b05 modem.b06 modem.b07 modem.b08 \
    modem.b09 modem.b10 modem.b11 modem.b12 modem.b13 modem.b14 modem.b15 \
    modem.b19 modem.b20 modem.b21 modem.b22 modem.b23 modem.b24 modem.mdt modem_pr

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

# qmpsecap
QMPSECAP_IMAGES := \
    qmpsecap.b00 qmpsecap.b01 qmpsecap.b02 qmpsecap.b03 qmpsecap.b04 qmpsecap.b05 qmpsecap.b06 qmpsecap.mdt

QMPSECAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(QMPSECAP_IMAGES)))
$(QMPSECAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "QMPSECAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QMPSECAP_SYMLINKS)

# securemm
SECUREMM_IMAGES := \
    securemm.b00 securemm.b01 securemm.b02 securemm.b03 securemm.b04 securemm.b05 securemm.b06 securemm.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SECUREMM_IMAGES)))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SECUREMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREMM_SYMLINKS)

# stool
STOOL_IMAGES := \
    stool.b00 stool.b01 stool.b02 stool.b03 stool.b04 stool.b05 stool.b06 stool.mdt

STOOL_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(STOOL_IMAGES)))
$(STOOL_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "STOOL firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(STOOL_SYMLINKS)

# tbase
TBASE_IMAGES := \
    tbase.b00 tbase.b01 tbase.b02 tbase.b03 tbase.b04 tbase.b05 tbase.b06 tbase.mdt

TBASE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(TBASE_IMAGES)))
$(TBASE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TBASE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TBASE_SYMLINKS)

# VENUS
VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

# WCNSS
WCNSS_IMAGES := \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b04 wcnss.b06 \
    wcnss.b09 wcnss.b10 wcnss.b11 wcnss.b12 wcnss.mdt

WCNSS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WCNSS_IMAGES)))
$(WCNSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WCNSS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WCNSS_SYMLINKS)

# widevine
WV_IMAGES := \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.b04 widevine.b05 \
    widevine.b06 widevine.mdt

WV_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(WV_IMAGES)))
$(WV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Widevine firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WV_SYMLINKS)

endif

include device/lge/sf340n/tftp.mk
