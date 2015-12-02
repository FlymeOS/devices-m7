.class Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "PanoramaController2.java"


# instance fields
.field private final exifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;

.field private final uiRotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/CaptureHandle;[BLjava/util/Hashtable;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CaptureHandle;",
            "[B",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/htc/camera/rotate/UIRotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->this$0:Lcom/htc/camera/component/PanoramaController2;

    .line 223
    invoke-virtual {p1}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 224
    iput-object p4, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    .line 225
    iput-object p5, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->uiRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 226
    return-void
.end method


# virtual methods
.method protected onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->this$0:Lcom/htc/camera/component/PanoramaController2;

    iget-object v1, p2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    # setter for: Lcom/htc/camera/component/PanoramaController2;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/camera/component/PanoramaController2;->access$002(Lcom/htc/camera/component/PanoramaController2;Landroid/net/Uri;)Landroid/net/Uri;

    .line 235
    return-void
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    .line 246
    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v2, "No JPEG data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    const/4 v4, 0x0

    .line 256
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    if-eqz v3, :cond_2

    .line 269
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 280
    :cond_2
    :goto_1
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->exifTags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 286
    :catch_0
    move-exception v0

    .line 288
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot insert EXIF tag"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    move v0, v2

    .line 292
    goto :goto_0

    .line 259
    :catch_1
    move-exception v1

    move-object v2, v4

    .line 261
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v4, "Cannot save panorama image"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 268
    if-eqz v2, :cond_0

    .line 269
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 271
    :catch_2
    move-exception v1

    .line 273
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    .line 268
    :goto_5
    if-eqz v4, :cond_3

    .line 269
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 266
    :cond_3
    :goto_6
    throw v0

    .line 283
    :cond_4
    :try_start_7
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    .line 271
    :catch_3
    move-exception v1

    .line 273
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 271
    :catch_4
    move-exception v0

    .line 273
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot close stream"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 266
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_5

    .line 259
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method
