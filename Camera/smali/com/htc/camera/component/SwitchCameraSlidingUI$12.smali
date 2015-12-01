.class synthetic Lcom/htc/camera/component/SwitchCameraSlidingUI$12;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

.field static final synthetic $SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$TouchFromArea:[I

.field static final synthetic $SwitchMap$com$htc$camera$rotate$UIRotation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1350
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->values()[Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 1050
    :goto_3
    invoke-static {}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->values()[Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    :try_start_4
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SwipeCaptureMode:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    .line 1019
    :goto_6
    invoke-static {}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->values()[Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$TouchFromArea:[I

    :try_start_7
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$TouchFromArea:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_LANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$TouchFromArea:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->TOP_OF_INVERSELANDSCAPE:Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$TouchFromArea;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    .line 203
    :goto_8
    invoke-static {}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->values()[Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    :try_start_9
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->BEGIN_DRAG_THRESHOLD:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->DRAGGING_TILT:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$12;->$SwitchMap$com$htc$camera$component$SwitchCameraSlidingUI$SlidingState:[I

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->WAITING_STARTPREVIEW:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    invoke-virtual {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

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

    .line 1019
    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    .line 1050
    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 1350
    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
