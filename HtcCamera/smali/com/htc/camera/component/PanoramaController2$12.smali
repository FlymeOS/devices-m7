.class synthetic Lcom/htc/camera/component/PanoramaController2$12;
.super Ljava/lang/Object;
.source "PanoramaController2.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$burst$BurstCameraState:[I

.field static final synthetic $SwitchMap$com$htc$camera$component$PanoramaController2$CaptureState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1318
    invoke-static {}, Lcom/htc/camera/component/PanoramaController2$CaptureState;->values()[Lcom/htc/camera/component/PanoramaController2$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$component$PanoramaController2$CaptureState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$component$PanoramaController2$CaptureState:[I

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaController2$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$component$PanoramaController2$CaptureState:[I

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaController2$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 370
    :goto_1
    invoke-static {}, Lcom/htc/camera/burst/BurstCameraState;->values()[Lcom/htc/camera/burst/BurstCameraState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 1318
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
