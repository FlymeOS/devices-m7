.class public Lcom/htc/camera/bi/VideoModeRecordStatisticController;
.super Lcom/htc/camera/bi/MediaStatisticController;
.source "VideoModeRecordStatisticController.java"


# instance fields
.field mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 44
    const-string v0, "VideoModeRecordStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/bi/MediaStatisticController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getCaptureModeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 152
    if-eqz v0, :cond_5

    .line 154
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 155
    iget-object v1, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v0, "0"

    .line 174
    :goto_0
    return-object v0

    .line 159
    :cond_0
    instance-of v1, v0, Lcom/htc/camera/capturemode/c;

    if-eqz v1, :cond_1

    .line 160
    const-string v0, "1"

    goto :goto_0

    .line 161
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v1, :cond_2

    .line 162
    const-string v0, "2"

    goto :goto_0

    .line 163
    :cond_2
    instance-of v1, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    const-string v0, "3"

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    const-string v0, "4"

    goto :goto_0

    .line 170
    :cond_4
    instance-of v0, v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v0, :cond_5

    .line 171
    const-string v0, "5"

    goto :goto_0

    .line 174
    :cond_5
    const-string v0, "1"

    goto :goto_0
.end method

.method protected getSlowMotionKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/SlowMotionScene;

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "1"

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getVideoQualityKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 116
    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVideoSceneKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 137
    instance-of v1, v0, Lcom/htc/camera/effect/SlowMotionScene;

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "1"

    .line 146
    :goto_0
    return-object v0

    .line 139
    :cond_0
    instance-of v1, v0, Lcom/htc/camera/effect/FastHDScene;

    if-eqz v1, :cond_1

    .line 140
    const-string v0, "2"

    goto :goto_0

    .line 141
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/effect/HdrVideoScene;

    if-eqz v1, :cond_2

    .line 142
    const-string v0, "3"

    goto :goto_0

    .line 143
    :cond_2
    instance-of v0, v0, Lcom/htc/camera/effect/FastFullHDScene;

    if-eqz v0, :cond_3

    .line 144
    const-string v0, "4"

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getVideoStabilizationKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    const-string v0, "1"

    .line 131
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/camera/bi/MediaStatisticController;->initializeOverride()V

    .line 56
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 57
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 58
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 62
    const-string v0, "pref_bi_video_setting_recording_history"

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/bi/VideoModeRecordStatisticController$1;-><init>(Lcom/htc/camera/bi/VideoModeRecordStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/bi/VideoModeRecordStatisticController$2;-><init>(Lcom/htc/camera/bi/VideoModeRecordStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mSplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/bi/VideoModeRecordStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController$3;-><init>(Lcom/htc/camera/bi/VideoModeRecordStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 103
    :cond_0
    return-void
.end method

.method protected rebuildComposeKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-boolean v1, p0, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->mIsResetToDefault:Z

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getVideoQualityKeyValue()Ljava/lang/String;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getEffectKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getSlowMotionKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getReviewDurationKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getVideoStabilizationKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getVideoSceneKeyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getCaptureModeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected writeBehaviorData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/camera/bi/VideoModeRecordStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_video_setting_recording_history"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 222
    return-void
.end method
