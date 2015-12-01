.class synthetic Lcom/htc/camera/splitcapture/SplitPhotoUI$22;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$htc$camera$UIState:[I

.field static final synthetic $SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

.field static final synthetic $SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1456
    invoke-static {}, Lcom/htc/camera/UIState;->values()[Lcom/htc/camera/UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$UIState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$UIState:[I

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v1}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$UIState:[I

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v1}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    .line 1307
    :goto_1
    invoke-static {}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->values()[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->DrawOnce:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Preparing:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Start:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$SplitPhotoUI$AnimationState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    .line 279
    :goto_5
    invoke-static {}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->values()[Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingNextSwiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$splitcapture$ISplitPhotoController$SplitPhotoState:[I

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v1}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    .line 143
    :goto_f
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_10
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$22;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    return-void

    :catch_0
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_10

    .line 279
    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_6

    .line 1307
    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_2

    .line 1456
    :catch_10
    move-exception v0

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto/16 :goto_0
.end method
