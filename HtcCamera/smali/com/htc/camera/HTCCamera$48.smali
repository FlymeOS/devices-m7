.class synthetic Lcom/htc/camera/HTCCamera$48;
.super Ljava/lang/Object;
.source "HTCCamera.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraPreviewState:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraStartMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$CaptureFailedReason:[I

.field static final synthetic $SwitchMap$com$htc$camera$Global$REQUEST_CODE:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingLimitState:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$UIState:[I

.field static final synthetic $SwitchMap$com$htc$camera$io$StorageState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8120
    invoke-static {}, Lcom/htc/camera/io/StorageState;->values()[Lcom/htc/camera/io/StorageState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->NoStorage:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->Unknown:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_29

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_28

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->Shared:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_27

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_26

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$io$StorageState:[I

    sget-object v1, Lcom/htc/camera/io/StorageState;->ReadOnly:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_25

    .line 7892
    :goto_5
    invoke-static {}, Lcom/htc/camera/CaptureFailedReason;->values()[Lcom/htc/camera/CaptureFailedReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_24

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_23

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_22

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CaptureFailedReason:[I

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->DurationTooShort:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1}, Lcom/htc/camera/CaptureFailedReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_21

    .line 7713
    :goto_9
    invoke-static {}, Lcom/htc/camera/RecordingLimitState;->values()[Lcom/htc/camera/RecordingLimitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    :try_start_a
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_20

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingLimitState:[I

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingLimitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1f

    .line 7175
    :goto_b
    invoke-static {}, Lcom/htc/camera/CameraPreviewStartResult;->values()[Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    :try_start_c
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1e

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1d

    :goto_d
    :try_start_e
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1c

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1b

    :goto_f
    :try_start_10
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1a

    :goto_10
    :try_start_11
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_19

    :goto_11
    :try_start_12
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewStartResult:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewStartResult;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_18

    .line 6856
    :goto_12
    invoke-static {}, Lcom/htc/camera/UIState;->values()[Lcom/htc/camera/UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$UIState:[I

    :try_start_13
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$UIState:[I

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v1}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_17

    :goto_13
    :try_start_14
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$UIState:[I

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v1}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_16

    .line 3019
    :goto_14
    invoke-static {}, Lcom/htc/camera/CameraStartMode;->values()[Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    :try_start_15
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    :try_start_16
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_14

    .line 2843
    :goto_16
    invoke-static {}, Lcom/htc/camera/Global$REQUEST_CODE;->values()[Lcom/htc/camera/Global$REQUEST_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$Global$REQUEST_CODE:[I

    :try_start_17
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$Global$REQUEST_CODE:[I

    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->INTENT_ALBUM_RESULT:Lcom/htc/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/htc/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_13

    :goto_17
    :try_start_18
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$Global$REQUEST_CODE:[I

    sget-object v1, Lcom/htc/camera/Global$REQUEST_CODE;->REQUEST_CODE_CROP_MSG:Lcom/htc/camera/Global$REQUEST_CODE;

    invoke-virtual {v1}, Lcom/htc/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_12

    .line 2008
    :goto_18
    invoke-static {}, Lcom/htc/camera/CameraMode;->values()[Lcom/htc/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    :try_start_19
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_11

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraMode:[I

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_10

    .line 1953
    :goto_1a
    invoke-static {}, Lcom/htc/camera/CameraPreviewState;->values()[Lcom/htc/camera/CameraPreviewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    :try_start_1b
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_f

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_e

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_d

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$CameraPreviewState:[I

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v1}, Lcom/htc/camera/CameraPreviewState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_c

    .line 1911
    :goto_1e
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_1f
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_b

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_a

    :goto_20
    :try_start_21
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_9

    :goto_21
    :try_start_22
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_8

    :goto_22
    :try_start_23
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_7

    :goto_23
    :try_start_24
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_6

    :goto_24
    :try_start_25
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_5

    .line 1900
    :goto_25
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_26
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_4

    :goto_26
    :try_start_27
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_3

    :goto_27
    :try_start_28
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_2

    :goto_28
    :try_start_29
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_1

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/htc/camera/HTCCamera$48;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Processing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_0

    :goto_2a
    return-void

    :catch_0
    move-exception v0

    goto :goto_2a

    :catch_1
    move-exception v0

    goto :goto_29

    :catch_2
    move-exception v0

    goto :goto_28

    :catch_3
    move-exception v0

    goto :goto_27

    :catch_4
    move-exception v0

    goto :goto_26

    .line 1911
    :catch_5
    move-exception v0

    goto :goto_25

    :catch_6
    move-exception v0

    goto :goto_24

    :catch_7
    move-exception v0

    goto :goto_23

    :catch_8
    move-exception v0

    goto :goto_22

    :catch_9
    move-exception v0

    goto :goto_21

    :catch_a
    move-exception v0

    goto/16 :goto_20

    :catch_b
    move-exception v0

    goto/16 :goto_1f

    .line 1953
    :catch_c
    move-exception v0

    goto/16 :goto_1e

    :catch_d
    move-exception v0

    goto/16 :goto_1d

    :catch_e
    move-exception v0

    goto/16 :goto_1c

    :catch_f
    move-exception v0

    goto/16 :goto_1b

    .line 2008
    :catch_10
    move-exception v0

    goto/16 :goto_1a

    :catch_11
    move-exception v0

    goto/16 :goto_19

    .line 2843
    :catch_12
    move-exception v0

    goto/16 :goto_18

    :catch_13
    move-exception v0

    goto/16 :goto_17

    .line 3019
    :catch_14
    move-exception v0

    goto/16 :goto_16

    :catch_15
    move-exception v0

    goto/16 :goto_15

    .line 6856
    :catch_16
    move-exception v0

    goto/16 :goto_14

    :catch_17
    move-exception v0

    goto/16 :goto_13

    .line 7175
    :catch_18
    move-exception v0

    goto/16 :goto_12

    :catch_19
    move-exception v0

    goto/16 :goto_11

    :catch_1a
    move-exception v0

    goto/16 :goto_10

    :catch_1b
    move-exception v0

    goto/16 :goto_f

    :catch_1c
    move-exception v0

    goto/16 :goto_e

    :catch_1d
    move-exception v0

    goto/16 :goto_d

    :catch_1e
    move-exception v0

    goto/16 :goto_c

    .line 7713
    :catch_1f
    move-exception v0

    goto/16 :goto_b

    :catch_20
    move-exception v0

    goto/16 :goto_a

    .line 7892
    :catch_21
    move-exception v0

    goto/16 :goto_9

    :catch_22
    move-exception v0

    goto/16 :goto_8

    :catch_23
    move-exception v0

    goto/16 :goto_7

    :catch_24
    move-exception v0

    goto/16 :goto_6

    .line 8120
    :catch_25
    move-exception v0

    goto/16 :goto_5

    :catch_26
    move-exception v0

    goto/16 :goto_4

    :catch_27
    move-exception v0

    goto/16 :goto_3

    :catch_28
    move-exception v0

    goto/16 :goto_2

    :catch_29
    move-exception v0

    goto/16 :goto_1

    :catch_2a
    move-exception v0

    goto/16 :goto_0
.end method
