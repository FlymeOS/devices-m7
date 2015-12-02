.class synthetic Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$1;
.super Ljava/lang/Object;
.source "PhotoBoothResolutionProvider.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
