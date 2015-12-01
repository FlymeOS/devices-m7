.class synthetic Lcom/htc/camera/zoe/ZoeController$31;
.super Ljava/lang/Object;
.source "ZoeController.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$ScreenResolution:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$burst$BurstCameraState:[I

.field static final synthetic $SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1390
    invoke-static {}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->values()[Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->SingleShotFirst:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->Sequential:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    .line 1039
    :goto_1
    invoke-static {}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->values()[Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    .line 955
    :goto_6
    invoke-static {}, Lcom/htc/camera/ScreenResolution;->values()[Lcom/htc/camera/ScreenResolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    :try_start_7
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    sget-object v1, Lcom/htc/camera/ScreenResolution;->FHD:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v1}, Lcom/htc/camera/ScreenResolution;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    .line 814
    :goto_7
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_8
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    .line 826
    :goto_9
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_a
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    .line 446
    :goto_b
    invoke-static {}, Lcom/htc/camera/burst/BurstCameraState;->values()[Lcom/htc/camera/burst/BurstCameraState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    :try_start_c
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    .line 355
    :goto_d
    invoke-static {}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->values()[Lcom/htc/camera/zoe/ZoeController$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    :try_start_e
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Capturing:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Stopping:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_f
    :try_start_10
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Canceling:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_10
    return-void

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_e

    .line 446
    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_c

    .line 826
    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_a

    .line 814
    :catch_7
    move-exception v0

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_8

    .line 955
    :catch_9
    move-exception v0

    goto/16 :goto_7

    .line 1039
    :catch_a
    move-exception v0

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_5

    :catch_c
    move-exception v0

    goto/16 :goto_4

    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v0

    goto/16 :goto_2

    .line 1390
    :catch_f
    move-exception v0

    goto/16 :goto_1

    :catch_10
    move-exception v0

    goto/16 :goto_0
.end method
