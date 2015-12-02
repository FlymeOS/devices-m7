.class synthetic Lcom/htc/camera/dualcamera/DualCameraUI$22;
.super Ljava/lang/Object;
.source "DualCameraUI.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$dualcamera$HumanJointMaskType:[I

.field static final synthetic $SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2371
    invoke-static {}, Lcom/htc/camera/dualcamera/HumanJointMaskType;->values()[Lcom/htc/camera/dualcamera/HumanJointMaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$HumanJointMaskType:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$HumanJointMaskType:[I

    sget-object v1, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    .line 2197
    :goto_0
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    .line 1404
    :goto_2
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_3
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    .line 984
    :goto_6
    invoke-static {}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->values()[Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    :try_start_7
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraUI$22;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    .line 1404
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    .line 2197
    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    .line 2371
    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method
