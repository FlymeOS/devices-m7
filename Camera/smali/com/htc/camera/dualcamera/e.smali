.class Lcom/htc/camera/dualcamera/e;
.super Lcom/htc/camera/DefaultPhotoResolutionProvider;
.source "PhotoResolutionProvider.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0xcc0

    .line 27
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v2

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 32
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    if-gt v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    if-gt v5, v6, :cond_1

    .line 34
    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    return-object v0

    .line 29
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 40
    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
