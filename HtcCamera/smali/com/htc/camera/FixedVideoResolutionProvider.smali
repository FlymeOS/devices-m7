.class public Lcom/htc/camera/FixedVideoResolutionProvider;
.super Ljava/lang/Object;
.source "FixedVideoResolutionProvider.java"

# interfaces
.implements Lcom/htc/camera/am;


# instance fields
.field private final m_Resolution:Lcom/htc/camera/Resolution;

.field private final m_ResolutionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/Resolution;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/FixedVideoResolutionProvider;->m_Resolution:Lcom/htc/camera/Resolution;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/camera/Resolution;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/FixedVideoResolutionProvider;->m_ResolutionList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/camera/FixedVideoResolutionProvider;->m_Resolution:Lcom/htc/camera/Resolution;

    if-ne p2, v0, :cond_0

    .line 34
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget v1, p2, Lcom/htc/camera/Resolution;->width:I

    iget v2, p2, Lcom/htc/camera/Resolution;->height:I

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 35
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
    .line 44
    iget-object v0, p0, Lcom/htc/camera/FixedVideoResolutionProvider;->m_Resolution:Lcom/htc/camera/Resolution;

    return-object v0
.end method

.method public getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;
    .locals 1
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
    .line 53
    iget-object v0, p0, Lcom/htc/camera/FixedVideoResolutionProvider;->m_ResolutionList:Ljava/util/List;

    return-object v0
.end method

.method public getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
