.class synthetic Lcom/htc/camera/splitcapture/SplitCaptureMode$23;
.super Ljava/lang/Object;
.source "SplitCaptureMode.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1422
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    .line 1412
    :goto_0
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_1
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 244
    :goto_1
    invoke-static {}, Lcom/htc/camera/splitcapture/SplitCaptureType;->values()[Lcom/htc/camera/splitcapture/SplitCaptureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_6_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->HumanJointCapture:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->DualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureMode$23;->$SwitchMap$com$htc$camera$splitcapture$SplitCaptureType:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitCaptureType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    .line 1412
    :catch_6
    move-exception v0

    goto :goto_1

    .line 1422
    :catch_7
    move-exception v0

    goto :goto_0
.end method
