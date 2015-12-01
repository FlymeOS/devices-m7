.class synthetic Lcom/htc/camera/photopattern/PhotoBoothController2$6;
.super Ljava/lang/Object;
.source "PhotoBoothController2.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$photopattern$PhotoBoothController2$CaptureState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 906
    invoke-static {}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->values()[Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$6;->$SwitchMap$com$htc$camera$photopattern$PhotoBoothController2$CaptureState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$6;->$SwitchMap$com$htc$camera$photopattern$PhotoBoothController2$CaptureState:[I

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$6;->$SwitchMap$com$htc$camera$photopattern$PhotoBoothController2$CaptureState:[I

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
