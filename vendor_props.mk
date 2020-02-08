# Audio Properties
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=2 \
    audio.deep_buffer.media=true \
    audio.offload.disable=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.speaker.prot.enable=false \
    ro.vendor.audio.sdk.ssr=false \
    ro.vendor.audio.sdk.fluencetype=fluence \
    audio.parser.ip.buffer.size=262144 \
    vendor.audio_hal.period_size=192 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.track.enable=true \
    vendor.audio.playback.mch.downsample=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.pp.asphere.enabled=false \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.voice.playback.conc.disabled=true \
    vendor.voice.record.conc.disabled=false \
    vendor.voice.voip.conc.disabled=true \
    vendor.voice.conc.fallbackpath=deep-buffer
    
# Bluetooth Properties
PRODUCT_PROPERTY_OVERRIDES += \
    qcom.bluetooth.soc=smd \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bt.bdaddr_path="/data/misc/bluetooth/bd_addr"
    
# Camera Properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    camera2.portability.force_api=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true
#   persist.camera.HAL3.enabled=1

# CNE Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1
    
# Dalvik Properties    
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    persist.sys.dalvik.vm.lib.2=libart.so \
    dalvik.vm.isa.arm.variant=cortex-a53 \
    dalvik.vm.isa.arm.features=default \
    
# Display Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    persist.sys.force_sw_gles=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.debug.wfd.enable=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.hwc.mdpcomp.enable=true \
    debug.composition.type=mdp \
    persist.sys.wfd.virtual=0 \
    ro.opengles.version=196610 \
    ro.qualcomm.cabl=0 \
    debug.sdm.support_writeback=0 \
    debug.sf.recomputecrop=0 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1 \
    ro.sf.lcd_density=480 \
    sdm.debug.disable_rotator_split=1 \
    vendor.debug.disable_skip_validate=1 \
    sdm.debug.disable_skip_validate=1 \
    sys.display-size=1920x1080
    
# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Fingerprint Properties    
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false \
    ro.lge.fingerprint.mode=key
    
# FM Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false
    
# Media Properties
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.disable_bframes=1 \
    vidc.enc.narrow.searchrange=1 \
    vidc.disable.split.mode=1 \
    vidc.debug.perf.mode=2
    
# MISC Pulled from stock 11e sf340n
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.first_api_level=23 \
    ro.movetosdcard.enable=true \
    ro.frp.pst=/dev/block/bootdevice/by-name/persistent \
    persist.mm.sta.enable=0 \
    persist.timed.enable=true \
    persist.qfp=false \
    persist.ro.config.hw_quickpoweron

# Perf Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.empty_app_percent=50 \
    ro.vendor.qti.sys.fw.trim_empty_percent=100 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.trim_enable_memory=6442450944 \
    ro.vendor.qti.am.reschedule_service=true \
    ro.sys.fw.dex2oat_thread_count=4 \
    ro.vendor.qti.config.zram=true \
    ro.vendor.qti.config.swap=true \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.sys.fw.bservice_limit=5 \
    ro.vendor.qti.sys.fw.bservice_age=5000 \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=8
    
# Radio Properties
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.data.iwlan.enable=true \
    persist.radio.add_power_save=1 \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.radio.calls.on.ims=true \
    persist.radio.csvt.enabled=false \
    persist.radio.jbims=0 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.DROPSETENABLE=1 \
    persist.radio.aosp_usr_pref_sel=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.radio.force_on_dc=true \
    persist.radio.ignore_dom_time=5 \
    persist.radio.mt_sms_ack=20 \
    persist.radio.VT_CAM_INTERFACE=2 \
    persist.radio.VT_ENABLE=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.ROTATION_ENABLE=1 \
    persist.radio.VT_USE_MDM_TIME=0 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    ril.ecclist=100,101,102,108,112 \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.default_network=22,20 \
    ro.use_data_netmgrd=true \
    service.qti.ims.enabled=1 \
    persist.dpm.feature=0 \
    ro.data.large_tcp_window_size=true \
    telephony.lteOnCdmaDevice=1

# SdcardFs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Security Patch
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2018-03-01

# Sensor Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sensors.hal=i \
    debug.qualcomm.sns.daemon=i \
    debug.qualcomm.sns.libsensor1=e \

# Wi-Fi Properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
