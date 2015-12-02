.class synthetic Lcom/htc/camera/mainbar/ExpandableMenuUI$23;
.super Ljava/lang/Object;
.source "ExpandableMenuUI.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$FlashMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

.field static final synthetic $SwitchMap$com$htc$camera$rotate$UIRotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1217
    invoke-static {}, Lcom/htc/camera/FlashMode;->values()[Lcom/htc/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$FlashMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    .line 455
    :goto_2
    invoke-static {}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->values()[Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    :try_start_3
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$mainbar$ExpandableMenuUI$ExpandableMenuUIStatus:[I

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v1}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    .line 368
    :goto_5
    invoke-static {}, Lcom/htc/camera/RecordingState;->values()[Lcom/htc/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    :try_start_6
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$RecordingState:[I

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    .line 241
    :goto_d
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->values()[Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    :try_start_e
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$23;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_e

    .line 368
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

    .line 455
    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    goto/16 :goto_3

    .line 1217
    :catch_f
    move-exception v0

    goto/16 :goto_2

    :catch_10
    move-exception v0

    goto/16 :goto_1

    :catch_11
    move-exception v0

    goto/16 :goto_0
.end method
