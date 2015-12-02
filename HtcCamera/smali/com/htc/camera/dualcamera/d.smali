.class final Lcom/htc/camera/dualcamera/d;
.super Lcom/htc/camera/dualcamera/e;
.source "HumanJointPhotoResolutionProvider.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/e;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/htc/camera/dualcamera/e;->getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/PhotoSizeMode;->Wide:Lcom/htc/camera/PhotoSizeMode;

    if-eq v2, v3, :cond_0

    .line 25
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 28
    :cond_1
    return-object v1
.end method
