.class public final Lcom/htc/camera/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.java"


# static fields
.field private static final mAudioStreamMaxVolPercent:I

.field private static mCanEnableAutoCapture:Ljava/lang/Boolean;

.field private static mCanEnableHumanJoint:Ljava/lang/Boolean;

.field private static mCanEnableSplitCapture:Ljava/lang/Boolean;

.field private static mCanEnableVoiceCapture:Ljava/lang/Boolean;

.field private static mCanEnableZoe:Ljava/lang/Boolean;

.field private static mForce3DPreviewRendering:Ljava/lang/Boolean;

.field private static mGyroCutoff:Ljava/lang/Float;

.field private static mHasSystemBar:Ljava/lang/Boolean;

.field private static final mIsChangeZoomByVolKeys:Z

.field private static final mIsDefaultFrontVideoResolution720p:Z

.field private static final mIsDefaultMaxMainVideoResolution:Z

.field private static final mIsEnableGeoTagDefault:Z

.field private static final mIsForceShutterSound:Z

.field private static mIsForceShutterSoundFromACC:Ljava/lang/Boolean;

.field private static mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

.field private static final mIsMMSChangeFrameRate:Z

.field private static final mIsMMSneedAMRNB:Z

.field private static final mIsMuteFocusSound:Z

.field private static mIsPanoramaSupported:Ljava/lang/Boolean;

.field private static mIsPhotoBoothSupported:Ljava/lang/Boolean;

.field private static final mIsShowFlashLightHint:Z

.field private static mIsSimCardStateMonitorNeed:Ljava/lang/Boolean;

.field private static final mMMSRecordingLimit:I

.field private static final mMMSVideoBitRate:I

.field private static final mMMSVideoEncoder:Ljava/lang/String;

.field private static final mMMSVideoFrameRate:I

.field private static mShotCount:Ljava/lang/Integer;

.field private static mSupportContinuousBurstShot:Ljava/lang/Boolean;

.field private static mSupportManualCapture:Ljava/lang/Boolean;

.field private static mSupportPanoramaPlus:Ljava/lang/Boolean;

.field private static mSupportSameFeaturesForAllCams:Ljava/lang/Boolean;

.field private static mSupportZoeInVideoCapture:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSIEBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    :try_start_0
    const-string v1, "change_zoom_by_volume_keys"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const-string v1, "change_zoom_by_volume_keys"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsChangeZoomByVolKeys:Z

    .line 61
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsChangeZoomByVolKeys:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsChangeZoomByVolKeys:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "is_default_front_video_resolution_720p"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsDefaultFrontVideoResolution720p:Z

    .line 64
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDefaultFrontVideoResolution720p:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsDefaultFrontVideoResolution720p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "is_default_max_main_video_resolution"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsDefaultMaxMainVideoResolution:Z

    .line 67
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsDefaultMaxMainVideoResolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsDefaultMaxMainVideoResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "mms_recording_limit"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/camera/FeatureConfig;->mMMSRecordingLimit:I

    .line 74
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMMSRecordingLimit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/camera/FeatureConfig;->mMMSRecordingLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "mms_video_bitrate"

    const-string v2, "80000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/camera/FeatureConfig;->mMMSVideoBitRate:I

    .line 77
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMMSVideoBitRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/camera/FeatureConfig;->mMMSVideoBitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "mms_video_framerate"

    const-string v2, "30"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/camera/FeatureConfig;->mMMSVideoFrameRate:I

    .line 80
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMMSVideoFrameRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/camera/FeatureConfig;->mMMSVideoFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "mms_video_encoder"

    const-string v2, "H263"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/camera/FeatureConfig;->mMMSVideoEncoder:Ljava/lang/String;

    .line 83
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMMSVideoEncoder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/FeatureConfig;->mMMSVideoEncoder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "is_mute_focus_sound"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsMuteFocusSound:Z

    .line 86
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsMuteFocusSound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsMuteFocusSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "mms_preview_change_framerate"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsMMSChangeFrameRate:Z

    .line 89
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsMMSChangeFrameRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsMMSChangeFrameRate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "mms_need_apply_amrnb"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsMMSneedAMRNB:Z

    .line 92
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsMMSneedAMRNB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsMMSneedAMRNB:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "audio_stream_max_volume_percent"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/htc/camera/FeatureConfig;->mAudioStreamMaxVolPercent:I

    .line 95
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAudioStreamMaxVolPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/camera/FeatureConfig;->mAudioStreamMaxVolPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "is_force_shutter_sound"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSound:Z

    .line 101
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsForceShutterSound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "enable_geo_tag_default"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/camera/FeatureConfig;->mIsEnableGeoTagDefault:Z

    .line 104
    const-string v1, "FeatureConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsEnableGeoTagDefault:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/htc/camera/FeatureConfig;->mIsEnableGeoTagDefault:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "is_show_flashlight_hint"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsShowFlashLightHint:Z

    .line 107
    const-string v0, "FeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsShowFlashLightHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/camera/FeatureConfig;->mIsShowFlashLightHint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "FeatureConfig"

    const-string v2, "Parse custimization from Bundle failed"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSIEBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static canChangeFrameRate()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsMMSChangeFrameRate:Z

    return v0
.end method

.method public static canChangeZoomByVolumeKeys()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsChangeZoomByVolKeys:Z

    return v0
.end method

.method public static canEnableAutoCapture()Z
    .locals 3

    .prologue
    .line 171
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableAutoCapture:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 173
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 174
    const-string v1, "grant_auto_selfi_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableAutoCapture:Ljava/lang/Boolean;

    .line 175
    const-string v0, "FeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canEnableAutoCapture() - mCanEnableAutoCapture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mCanEnableAutoCapture:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableAutoCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canEnableHumanJoint()Z
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableHumanJoint:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.software.EyeUL"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.software.EyeTUHL"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.software.EyeULATT"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableHumanJoint:Ljava/lang/Boolean;

    .line 195
    :cond_1
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableHumanJoint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 193
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableHumanJoint:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static canEnableVoiceCapture()Z
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableVoiceCapture:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 159
    const-string v1, "grant_voice_capture_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableVoiceCapture:Ljava/lang/Boolean;

    .line 160
    const-string v0, "FeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canEnableVoiceCapture() - mCanEnableVoiceCapture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mCanEnableVoiceCapture:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableVoiceCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static canEnableZoe()Z
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableZoe:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_1

    .line 137
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 138
    const-string v1, "can_enable_zoe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableZoe:Ljava/lang/Boolean;

    .line 146
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableZoe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 142
    :cond_1
    const-string v0, "FeatureConfig"

    const-string v1, "canEnableZoe() - No main camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableZoe:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static canHTCSkinBeautifer()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public static canSelectRecordWithAudio()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public static canSelectStereoAudioRecording()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public static canSelectVideoStabilization()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public static enableGeoTagByDefault()Z
    .locals 1

    .prologue
    .line 257
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsEnableGeoTagDefault:Z

    return v0
.end method

.method public static force3DPreviewRendering()Z
    .locals 3

    .prologue
    .line 295
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mForce3DPreviewRendering:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 297
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 298
    const-string v1, "force_3d_preview_rendering"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mForce3DPreviewRendering:Ljava/lang/Boolean;

    .line 299
    const-string v0, "FeatureConfig"

    const-string v1, "force3DPreviewRendering() - Value : "

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mForce3DPreviewRendering:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mForce3DPreviewRendering:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static forceSutterSound()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSoundFromACC:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "Android_Multimedia"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 236
    const-string v3, "support_camera_enforce_shuttersound"

    invoke-virtual {v0, v3, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSoundFromACC:Ljava/lang/Boolean;

    .line 237
    const-string v0, "FeatureConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsForceShutterSoundFromACC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSoundFromACC:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSoundFromACC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    :cond_1
    :goto_0
    return v1

    .line 243
    :cond_2
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->hasSIE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsForceShutterSound:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "46605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    .line 247
    :cond_5
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSimCardStateMonitorNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 249
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_6

    sget-object v3, Lcom/htc/camera/CameraApplication;->PROPERTY_SIM_OPERATOR:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraApplication;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "46605"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    .line 252
    goto :goto_0
.end method

.method public static getAudioStreamVolPercent()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/htc/camera/FeatureConfig;->mAudioStreamMaxVolPercent:I

    return v0
.end method

.method public static getBurstContinueousShotCount()I
    .locals 3

    .prologue
    .line 529
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mShotCount:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 531
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 532
    const-string v1, "burst_shot_count"

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mShotCount:Ljava/lang/Integer;

    .line 535
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mShotCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDriverCallbackTimeoutHandlingPolicy()Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ThrowException:Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    return-object v0
.end method

.method public static getGyroCutoff()F
    .locals 4

    .prologue
    const/high16 v3, 0x40200000    # 2.5f

    .line 645
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 649
    :try_start_0
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 650
    const-string v1, "gyro_cutoff"

    const-string v2, "2.5"

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    .line 652
    const-string v0, "FeatureConfig"

    const-string v1, "mGyroCutoff:"

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 655
    const-string v0, "FeatureConfig"

    const-string v1, "getGyroCutoff() - Set cutoff to default"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 659
    :catch_0
    move-exception v0

    .line 661
    const-string v1, "FeatureConfig"

    const-string v2, "getGyroCutoff() - Cannot get gyro cutoff, set to default"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mGyroCutoff:Ljava/lang/Float;

    goto :goto_0
.end method

.method public static getMMSDuration()I
    .locals 1

    .prologue
    .line 270
    sget v0, Lcom/htc/camera/FeatureConfig;->mMMSRecordingLimit:I

    return v0
.end method

.method public static getMMSVideoBitRate()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/htc/camera/FeatureConfig;->mMMSVideoBitRate:I

    return v0
.end method

.method public static getMMSVideoEncoder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mMMSVideoEncoder:Ljava/lang/String;

    return-object v0
.end method

.method public static getMMSVideoFrameRate()I
    .locals 1

    .prologue
    .line 282
    sget v0, Lcom/htc/camera/FeatureConfig;->mMMSVideoFrameRate:I

    return v0
.end method

.method public static hasSystemBar()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 544
    sget-object v1, Lcom/htc/camera/FeatureConfig;->mHasSystemBar:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 546
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    const-string v1, "Camera"

    invoke-static {v1}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v1

    .line 549
    const-string v2, "has_systembar"

    invoke-virtual {v1, v2, v0}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mHasSystemBar:Ljava/lang/Boolean;

    .line 554
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mHasSystemBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 552
    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mHasSystemBar:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isDefaultMaxFrontVideoResolution()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public static isDefaultMaxMainVideoResolution()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsDefaultMaxMainVideoResolution:Z

    return v0
.end method

.method public static isFrontCamLEDCountdownSupported()Z
    .locals 3

    .prologue
    .line 350
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 352
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 353
    const-string v1, "support_front_cam_led_countdown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    .line 355
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isFrontCamMainCamReviewDurationSync()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrontCameraFaceBeautifierSupported()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public static isFrontCameraSceneEnabled()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method public static isFrontCameraVideoSceneEnabled()Z
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportSameFeaturesForAllCameras()Z

    move-result v0

    return v0
.end method

.method public static isInitialFakeRotationEnabled()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public static isMMSneedAMRNB()Z
    .locals 1

    .prologue
    .line 434
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsMMSneedAMRNB:Z

    return v0
.end method

.method public static isMuteFocusSound()Z
    .locals 1

    .prologue
    .line 430
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsMuteFocusSound:Z

    return v0
.end method

.method public static isPanoramaSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 466
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsPanoramaSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 470
    :try_start_0
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 471
    const-string v1, "support_panorama"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsPanoramaSupported:Ljava/lang/Boolean;

    .line 472
    const-string v0, "FeatureConfig"

    const-string v1, "mIsPanoramaSupported:"

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mIsPanoramaSupported:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsPanoramaSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 473
    :catch_0
    move-exception v0

    .line 475
    const-string v1, "FeatureConfig"

    const-string v2, "isPanoramaSupported() - Cannot get support_panorama value"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsPanoramaSupported:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isPhotoBoothSupported()Z
    .locals 3

    .prologue
    .line 407
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSmallRamDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsPhotoBoothSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 411
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 412
    const-string v1, "grant_photobooth_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsPhotoBoothSupported:Ljava/lang/Boolean;

    .line 413
    const-string v0, "FeatureConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPhotoBoothSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mIsPhotoBoothSupported:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsPhotoBoothSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowFlashLightHint()Z
    .locals 1

    .prologue
    .line 287
    sget-boolean v0, Lcom/htc/camera/FeatureConfig;->mIsShowFlashLightHint:Z

    return v0
.end method

.method public static final isSimCardStateMonitorNeeded()Z
    .locals 3

    .prologue
    .line 444
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsSimCardStateMonitorNeed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 446
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 447
    const-string v1, "is_simcard_state_monitor_needed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mIsSimCardStateMonitorNeed:Ljava/lang/Boolean;

    .line 449
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mIsSimCardStateMonitorNeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isSplitCaptureModeSupported()Z
    .locals 3

    .prologue
    .line 388
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableSplitCapture:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 390
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSmallRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-nez v0, :cond_2

    .line 391
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableSplitCapture:Ljava/lang/Boolean;

    .line 398
    :cond_1
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableSplitCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 394
    :cond_2
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 395
    const-string v1, "grant_split_capture_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mCanEnableSplitCapture:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isSupportContinuousBurstShot()Z
    .locals 1

    .prologue
    .line 722
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportContinuousBurstShot:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 724
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSmallRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportContinuousBurstShot:Ljava/lang/Boolean;

    .line 729
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportContinuousBurstShot:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 727
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportContinuousBurstShot:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isSupportZoeInVideoCapture()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 702
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportZoeInVideoCapture:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 706
    :try_start_0
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 707
    const-string v1, "supportZoeInVideoCapture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportZoeInVideoCapture:Ljava/lang/Boolean;

    .line 708
    const-string v0, "FeatureConfig"

    const-string v1, "mSupportZoeInVideoCapture:"

    sget-object v2, Lcom/htc/camera/FeatureConfig;->mSupportZoeInVideoCapture:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportZoeInVideoCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 710
    :catch_0
    move-exception v0

    .line 712
    const-string v1, "FeatureConfig"

    const-string v2, "supportZoeInVideoCapture() - Cannot get supportZoeInVideoCapture value"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportZoeInVideoCapture:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isVideoSceneSupported()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public static requestAudioFocusInVideoMode()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public static requestAudioFocusWhileRecording()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public static supportManualCapture()Z
    .locals 3

    .prologue
    .line 617
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportManualCapture:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 619
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 620
    const-string v1, "has_manual_capture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportManualCapture:Ljava/lang/Boolean;

    .line 622
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportManualCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportPanoramaPlus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 579
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 581
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    iget-boolean v0, v0, Lcom/htc/camera/CameraType;->isSupported:Z

    if-eqz v0, :cond_4

    .line 584
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 585
    const-string v1, "has_panorama_plus"

    invoke-virtual {v0, v1, v3}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    .line 588
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 591
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 593
    :cond_0
    const-string v0, "FeatureConfig"

    const-string v1, "supportPanoramaPlus() - No gyroscope in this device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    .line 608
    :cond_1
    :goto_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 597
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    goto :goto_0

    .line 600
    :cond_3
    const-string v0, "FeatureConfig"

    const-string v1, "supportPanoramaPlus() - Panorama+ is disabled by ACC flag"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_4
    const-string v0, "FeatureConfig"

    const-string v1, "supportPanoramaPlus() - No main camera in this device"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportPanoramaPlus:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static supportSameFeaturesForAllCameras()Z
    .locals 3

    .prologue
    .line 631
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportSameFeaturesForAllCams:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 633
    const-string v0, "Camera"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 634
    const-string v1, "support_same_features_for_all_cameras"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/FeatureConfig;->mSupportSameFeaturesForAllCams:Ljava/lang/Boolean;

    .line 636
    :cond_0
    sget-object v0, Lcom/htc/camera/FeatureConfig;->mSupportSameFeaturesForAllCams:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final useNativeJpegRawDataBuffer()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public static useSeparateWhiteBalanceSettings()Z
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    return v0
.end method

.method public static useSpecialPanoramaResolutions()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method
