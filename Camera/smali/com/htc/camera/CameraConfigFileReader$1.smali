.class synthetic Lcom/htc/camera/CameraConfigFileReader$1;
.super Ljava/lang/Object;
.source "CameraConfigFileReader.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$AspectRatio:[I

.field static final synthetic $SwitchMap$com$htc$camera$PhotoSizeMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$Resolution$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 586
    invoke-static {}, Lcom/htc/camera/Resolution$Category;->values()[Lcom/htc/camera/Resolution$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    .line 499
    :goto_0
    invoke-static {}, Lcom/htc/camera/PhotoSizeMode;->values()[Lcom/htc/camera/PhotoSizeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    :try_start_1
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Regular:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 502
    :goto_3
    invoke-static {}, Lcom/htc/camera/AspectRatio;->values()[Lcom/htc/camera/AspectRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    :try_start_4
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$1;->$SwitchMap$com$htc$camera$AspectRatio:[I

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    invoke-virtual {v1}, Lcom/htc/camera/AspectRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    .line 499
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    .line 586
    :catch_5
    move-exception v0

    goto :goto_0
.end method
