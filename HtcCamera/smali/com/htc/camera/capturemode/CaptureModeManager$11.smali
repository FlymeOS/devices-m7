.class synthetic Lcom/htc/camera/capturemode/CaptureModeManager$11;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraHwKeyType:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1057
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    .line 1048
    :goto_1
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 687
    :goto_3
    invoke-static {}, Lcom/htc/camera/CameraHwKeyType;->values()[Lcom/htc/camera/CameraHwKeyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    :try_start_4
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->MAINCAMERA:Lcom/htc/camera/CameraHwKeyType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraHwKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->LASTCAMERA:Lcom/htc/camera/CameraHwKeyType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraHwKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->SELFIE:Lcom/htc/camera/CameraHwKeyType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraHwKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    .line 528
    :goto_6
    invoke-static {}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->values()[Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    :try_start_7
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_MAINCAMERA:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_HUMAN_JOINT:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SPLIT_CAPTURE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_PHOTOBOOTH:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$capturemode$CaptureModeManager$DEMO_FLOW:[I

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SELFIE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    .line 687
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 1048
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    .line 1057
    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
