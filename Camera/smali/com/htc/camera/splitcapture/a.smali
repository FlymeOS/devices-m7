.class Lcom/htc/camera/splitcapture/a;
.super Lcom/htc/camera/DefaultPhotoResolutionProvider;
.source "SplitPhotoController.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 143
    return-void
.end method


# virtual methods
.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 3
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
    .line 148
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v1
.end method
