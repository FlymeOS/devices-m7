.class synthetic Lcom/htc/camera/DefaultPhotoResolutionProvider$1;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$htc$camera$PhotoSizeMode:[I

.field static final synthetic $SwitchMap$com$htc$camera$Resolution$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Lcom/htc/camera/PhotoSizeMode;->values()[Lcom/htc/camera/PhotoSizeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$PhotoSizeMode:[I

    sget-object v1, Lcom/htc/camera/PhotoSizeMode;->Square:Lcom/htc/camera/PhotoSizeMode;

    invoke-virtual {v1}, Lcom/htc/camera/PhotoSizeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 324
    :goto_1
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_2
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main3D:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 163
    :goto_4
    invoke-static {}, Lcom/htc/camera/Resolution$Category;->values()[Lcom/htc/camera/Resolution$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    :try_start_5
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Large:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/htc/camera/DefaultPhotoResolutionProvider$1;->$SwitchMap$com$htc$camera$Resolution$Category:[I

    sget-object v1, Lcom/htc/camera/Resolution$Category;->Medium:Lcom/htc/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 324
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    .line 341
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
