.class public Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;
.super Ljava/lang/Object;
.source "SplitCaptureFrontVideoResolutionProvider.java"

# interfaces
.implements Lcom/htc/camera/am;


# instance fields
.field private m_CurrentResolution:Lcom/htc/camera/Resolution;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->m_CurrentResolution:Lcom/htc/camera/Resolution;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->m_CurrentResolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->m_CurrentResolution:Lcom/htc/camera/Resolution;

    invoke-virtual {v2}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;",
            "Lcom/htc/camera/Resolution;",
            ")",
            "Lcom/htc/camera/Resolution;"
        }
    .end annotation

    .prologue
    .line 26
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 2
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
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->m_CurrentResolution:Lcom/htc/camera/Resolution;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVideoResolution(Lcom/htc/camera/Resolution;)V
    .locals 0

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitCaptureFrontVideoResolutionProvider;->m_CurrentResolution:Lcom/htc/camera/Resolution;

    .line 55
    :cond_0
    return-void
.end method
