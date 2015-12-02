.class Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;
.super Lcom/htc/camera/DefaultVideoResolutionProvider;
.source "SplitCaptureMode.java"


# instance fields
.field private final m_SplitCaptureResolutions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 1497
    invoke-direct {p0, p1}, Lcom/htc/camera/DefaultVideoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 1494
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;->m_SplitCaptureResolutions:Ljava/util/Hashtable;

    .line 1498
    return-void
.end method


# virtual methods
.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 4
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
    .line 1506
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;->m_SplitCaptureResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    invoke-super {p0, p1}, Lcom/htc/camera/DefaultVideoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1512
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->isMmsVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1513
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1515
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;->m_SplitCaptureResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureMode$SplitVideoMainResolutionProvider;->m_SplitCaptureResolutions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
