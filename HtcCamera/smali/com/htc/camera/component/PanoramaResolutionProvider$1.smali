.class synthetic Lcom/htc/camera/component/PanoramaResolutionProvider$1;
.super Ljava/lang/Object;
.source "PanoramaResolutionProvider.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$AspectRatio:[I

.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/htc/camera/AspectRatio;->values()[Lcom/htc/camera/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_1
    sget-object v0, Lcom/htc/camera/component/PanoramaResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    goto :goto_0
.end method
