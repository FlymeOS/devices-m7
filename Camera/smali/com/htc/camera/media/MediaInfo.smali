.class public Lcom/htc/camera/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/htc/camera/x;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public volatile contentUri:Landroid/net/Uri;

.field public volatile duration:Lcom/htc/camera/Duration;

.field public volatile fileFormat:Lcom/htc/camera/io/FileFormat;

.field public volatile filePath:Lcom/htc/camera/io/Path;

.field public volatile isDualLens:Ljava/lang/Boolean;

.field public volatile orientation:I

.field public volatile takenTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "MediaInfo"

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/htc/camera/io/FileFormat;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V
    .locals 6

    .prologue
    .line 72
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;J)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;J)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "MediaInfo"

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 83
    iput-object p1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 84
    iput-object p2, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 85
    iput-object p3, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 86
    iput-wide p4, p0, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    .line 87
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 95
    iput-object v1, p0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    .line 96
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 97
    iput-object v1, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 98
    iput-object v1, p0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/media/MediaInfo;->orientation:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    .line 101
    return-void
.end method

.method public clone()Lcom/htc/camera/media/MediaInfo;
    .locals 4

    .prologue
    .line 112
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/MediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    const-string v0, "MediaInfo"

    const-string v1, "clone() - Clone not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v3, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/camera/media/MediaInfo;->clone()Lcom/htc/camera/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/htc/camera/media/MediaInfo;)V
    .locals 2

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 130
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    .line 131
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 132
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 133
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    .line 134
    iget v0, p1, Lcom/htc/camera/media/MediaInfo;->orientation:I

    iput v0, p0, Lcom/htc/camera/media/MediaInfo;->orientation:I

    .line 135
    iget-wide v0, p1, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    iput-wide v0, p0, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 142
    instance-of v1, p1, Lcom/htc/camera/media/MediaInfo;

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    check-cast p1, Lcom/htc/camera/media/MediaInfo;

    .line 145
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    if-ne v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-ne v1, v2, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    invoke-virtual {v1, v2}, Lcom/htc/camera/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->duration:Lcom/htc/camera/Duration;

    if-ne v1, v2, :cond_0

    :cond_9
    iget v1, p0, Lcom/htc/camera/media/MediaInfo;->orientation:I

    iget v2, p1, Lcom/htc/camera/media/MediaInfo;->orientation:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    iget-wide v3, p1, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 172
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 192
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 200
    iget-object v2, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 201
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    .line 202
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 203
    :cond_0
    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    .line 201
    goto :goto_0
.end method

.method public final isImage()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 213
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/io/FileFormat;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVideo()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 223
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/io/FileFormat;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 235
    iget-object v1, p0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 236
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    const-string v0, "(No content URI)"

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "(No file path)"

    goto :goto_1
.end method
