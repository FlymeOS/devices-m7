.class public Lcom/htc/camera/media/ImageMediaInfo;
.super Lcom/htc/camera/media/MediaInfo;
.source "ImageMediaInfo.java"


# instance fields
.field public volatile pixelSize:Lcom/htc/camera/imaging/Size;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V
    .locals 6

    .prologue
    .line 42
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;J)V

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/htc/camera/media/MediaInfo;->clear()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    .line 61
    return-void
.end method

.method public clone()Lcom/htc/camera/media/ImageMediaInfo;
    .locals 4

    .prologue
    .line 69
    :try_start_0
    invoke-super {p0}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ImageMediaInfo;

    .line 70
    iget-object v1, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/htc/camera/imaging/Size;

    iget-object v2, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    invoke-direct {v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(Lcom/htc/camera/imaging/Size;)V

    :goto_0
    iput-object v1, v0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    return-object v0

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    const-string v0, "MediaInfo"

    const-string v1, "clone() - Clone not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v1, p0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v3, p0, Lcom/htc/camera/media/ImageMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/media/ImageMediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V

    goto :goto_1
.end method

.method public bridge synthetic clone()Lcom/htc/camera/media/MediaInfo;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/htc/camera/media/ImageMediaInfo;->clone()Lcom/htc/camera/media/ImageMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/htc/camera/media/ImageMediaInfo;->clone()Lcom/htc/camera/media/ImageMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/htc/camera/media/MediaInfo;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/htc/camera/media/MediaInfo;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 85
    instance-of v0, p1, Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/htc/camera/media/ImageMediaInfo;

    .line 88
    iget-object v0, p1, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v1, p1, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v1}, Lcom/htc/camera/imaging/Size;-><init>(Lcom/htc/camera/imaging/Size;)V

    iput-object v0, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/htc/camera/media/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    instance-of v1, p1, Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v1, :cond_0

    .line 103
    check-cast p1, Lcom/htc/camera/media/ImageMediaInfo;

    .line 104
    iget-object v1, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    if-eqz v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    iget-object v1, p1, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0, v1}, Lcom/htc/camera/imaging/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_2
    iget-object v1, p1, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
