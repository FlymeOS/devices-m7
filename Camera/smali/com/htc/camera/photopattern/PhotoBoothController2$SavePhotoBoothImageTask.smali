.class Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "PhotoBoothController2.java"


# instance fields
.field private currentPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

.field private final exifTaghandle:I

.field private final uiRotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/photopattern/PhotoBoothPattern;[BILcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p4}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 195
    iput p5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->exifTaghandle:I

    .line 196
    iput-object p6, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->uiRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 197
    iput-object p3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->currentPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 198
    return-void
.end method


# virtual methods
.method protected onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothController2;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->access$002(Landroid/net/Uri;)Landroid/net/Uri;

    .line 207
    return-void
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->getJpegRawData(Z)[B

    move-result-object v4

    .line 218
    if-nez v4, :cond_1

    .line 220
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v2, "No JPEG data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    const/4 v3, 0x0

    .line 228
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    if-eqz v2, :cond_2

    .line 241
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 256
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/htc/imagelib/ImageLib;->sInstance()Lcom/htc/imagelib/ImageLib;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->exifTaghandle:I

    const/4 v3, 0x0

    const/16 v4, 0x101

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->currentPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v5}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/htc/imagelib/ImageLib;->setExifTagInt(IIII)I

    .line 258
    invoke-static {}, Lcom/htc/imagelib/ImageLib;->sInstance()Lcom/htc/imagelib/ImageLib;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->exifTaghandle:I

    const/4 v3, 0x0

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->currentPattern:Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v5}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchWidth()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/htc/imagelib/ImageLib;->setExifTagInt(IIII)I

    .line 260
    invoke-static {}, Lcom/htc/imagelib/ImageLib;->sInstance()Lcom/htc/imagelib/ImageLib;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->exifTaghandle:I

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/imagelib/ImageLib;->modifyExifDataEnd(ILjava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move v0, v1

    .line 269
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 233
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v4, "Cannot save PhotoBooth image"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    if-eqz v2, :cond_0

    .line 241
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v1

    .line 245
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 240
    :goto_4
    if-eqz v2, :cond_3

    .line 241
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 238
    :cond_3
    :goto_5
    throw v0

    .line 263
    :catch_2
    move-exception v0

    .line 265
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot insert EXIF tag"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 243
    :catch_3
    move-exception v1

    .line 245
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 243
    :catch_4
    move-exception v0

    .line 245
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 238
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 231
    :catch_5
    move-exception v1

    goto :goto_3
.end method
