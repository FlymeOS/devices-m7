.class Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;
.super Lcom/htc/camera/DefaultPhotoResolutionProvider;
.source "SplitPhotoController.java"


# instance fields
.field private photoResolution:Lcom/htc/camera/Resolution;

.field private photoSizeMode:Lcom/htc/camera/PhotoSizeMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Resolution;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 97
    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;->photoResolution:Lcom/htc/camera/Resolution;

    .line 98
    iget-object v0, p2, Lcom/htc/camera/Resolution;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    .line 99
    return-void
.end method


# virtual methods
.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 6
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
    const/4 v0, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;->photoResolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v2}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;->photoResolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 111
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 112
    if-lt v4, v2, :cond_0

    move-object v1, v0

    .line 120
    goto :goto_0

    .line 116
    :cond_0
    if-nez v1, :cond_1

    move-object v1, v0

    .line 121
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    return-object v0
.end method

.method public getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 2
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
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;->photoSizeMode:Lcom/htc/camera/PhotoSizeMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method
