.class synthetic Lcom/htc/camera/component/FocusIndicator$15;
.super Ljava/lang/Object;
.source "FocusIndicator.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$AutoFocusMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$TakingPictureState:[I

.field static final synthetic $SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 591
    invoke-static {}, Lcom/htc/camera/AutoFocusMode;->values()[Lcom/htc/camera/AutoFocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->FocusMoving:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    .line 502
    :goto_5
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    .line 479
    :goto_8
    invoke-static {}, Lcom/htc/camera/TakingPictureState;->values()[Lcom/htc/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    :try_start_9
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Processing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    .line 246
    :goto_b
    invoke-static {}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->values()[Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I

    :try_start_c
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v1}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focusing:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v1}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    .line 479
    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    .line 502
    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    .line 591
    :catch_8
    move-exception v0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
