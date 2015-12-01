.class synthetic Lcom/htc/camera/DefaultPhotoFlashProvider$2;
.super Ljava/lang/Object;
.source "DefaultPhotoFlashProvider.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$htc$camera$FlashMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 41
    :goto_1
    invoke-static {}, Lcom/htc/camera/FlashMode;->values()[Lcom/htc/camera/FlashMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/DefaultPhotoFlashProvider$2;->$SwitchMap$com$htc$camera$FlashMode:[I

    sget-object v1, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1}, Lcom/htc/camera/FlashMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 91
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
