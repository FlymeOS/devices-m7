.class synthetic Lcom/htc/camera/CameraThread$41;
.super Ljava/lang/Object;
.source "CameraThread.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

.field static final synthetic $SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingLimitState:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$rotate$UIRotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6058
    invoke-static {}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->values()[Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->Ignore:Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_18

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->RecoverSilently:Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_17

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    sget-object v1, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ThrowException:Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    invoke-virtual {v1}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_16

    .line 5705
    :goto_2
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_3
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_15

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_14

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_13

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_12

    .line 5345
    :goto_6
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->values()[Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    :try_start_7
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_11

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_10

    .line 3551
    :goto_8
    invoke-static {}, Lcom/htc/camera/RecordingLimitState;->values()[Lcom/htc/camera/RecordingLimitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    :try_start_9
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->DurationLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_f

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->FileSizeLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_e

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_d

    :goto_b
    :try_start_c
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 2084
    :goto_c
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_d
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_b

    :goto_d
    :try_start_e
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_a

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_9

    .line 1153
    :goto_f
    invoke-static {}, Lcom/htc/camera/CameraOpenFailedReason;->values()[Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    :try_start_10
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->NoToken:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_8

    :goto_10
    :try_start_11
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_7

    :goto_11
    :try_start_12
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_6

    :goto_12
    :try_start_13
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_5

    :goto_13
    :try_start_14
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4

    :goto_14
    :try_start_15
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_3

    :goto_15
    :try_start_16
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraOpenFailedReason:[I

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CameraOpenFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_2

    .line 1001
    :goto_16
    invoke-static {}, Lcom/htc/camera/CameraMode;->values()[Lcom/htc/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    :try_start_17
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1

    :goto_17
    :try_start_18
    sget-object v0, Lcom/htc/camera/CameraThread$41;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_0

    :goto_18
    return-void

    :catch_0
    move-exception v0

    goto :goto_18

    :catch_1
    move-exception v0

    goto :goto_17

    .line 1153
    :catch_2
    move-exception v0

    goto :goto_16

    :catch_3
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_13

    :catch_6
    move-exception v0

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_10

    .line 2084
    :catch_9
    move-exception v0

    goto/16 :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_e

    :catch_b
    move-exception v0

    goto/16 :goto_d

    .line 3551
    :catch_c
    move-exception v0

    goto/16 :goto_c

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_9

    .line 5345
    :catch_10
    move-exception v0

    goto/16 :goto_8

    :catch_11
    move-exception v0

    goto/16 :goto_7

    .line 5705
    :catch_12
    move-exception v0

    goto/16 :goto_6

    :catch_13
    move-exception v0

    goto/16 :goto_5

    :catch_14
    move-exception v0

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_3

    .line 6058
    :catch_16
    move-exception v0

    goto/16 :goto_2

    :catch_17
    move-exception v0

    goto/16 :goto_1

    :catch_18
    move-exception v0

    goto/16 :goto_0
.end method
