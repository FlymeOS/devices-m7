.class Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "GifModeController.java"


# instance fields
.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/sina/GifModeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "cimagegif-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/CaptureHandle;I[BZIZ)V
    .locals 8

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    sget-object v0, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BIIIZ)V

    .line 160
    iput-boolean p5, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    .line 161
    iput p3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->index:I

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    .line 163
    return-void
.end method

.method private encodeGif(Ljava/lang/String;Z)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeController;

    .line 389
    if-nez v0, :cond_0

    move v0, v2

    .line 421
    :goto_0
    return v0

    .line 393
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 395
    sget-object v1, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    .line 396
    sget-object v4, Lcom/htc/camera/sina/GifResolutionProvider;->GIF_MODE_RESOLUTION:Lcom/htc/camera/Resolution;

    invoke-virtual {v4}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v4

    .line 398
    if-eqz p2, :cond_1

    .line 399
    const-string v5, "Width"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    const-string v4, "Height"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    :goto_1
    const-string v1, "TimeDelay"

    const/16 v4, 0x20

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedPictureList():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/sina/GifModeController;->getSavedPictureList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bundle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/htc/camera/sina/GifModeController;->getSavedPictureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempFile.length():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lcom/htc/camera/sina/GifModeController;->getSavedPictureList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/mt/gifencoder/MTGIFEncoder;->GIFEncoder(Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;)J

    move-result-wide v3

    .line 417
    invoke-virtual {v0}, Lcom/htc/camera/sina/GifModeController;->clearSavedPictureList()V

    .line 418
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-nez v0, :cond_2

    .line 419
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 402
    :cond_1
    const-string v5, "Width"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string v1, "Height"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 421
    goto/16 :goto_0
.end method

.method private saveGifImage()Z
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 256
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - start"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/sina/GifModeController;

    .line 263
    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - No Controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 384
    :goto_0
    return v1

    .line 267
    :cond_0
    invoke-virtual {v1}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 268
    if-nez v2, :cond_1

    .line 270
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - No camera activity"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 271
    goto :goto_0

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    if-nez v2, :cond_2

    .line 275
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - No storage slot"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 276
    goto :goto_0

    .line 280
    :cond_2
    sget-object v2, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iput-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 283
    sget-object v2, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    iput-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 286
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 288
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveGifImage() - Storage slot \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 289
    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->getAvailableFileName()Lcom/htc/camera/io/Path;

    move-result-object v7

    .line 297
    if-eqz v7, :cond_4

    .line 298
    iget-object v2, v7, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    .line 299
    iget-object v12, v7, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v4, "encodeGif - start"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_FirstPicturePortrait:Z
    invoke-static {}, Lcom/htc/camera/sina/GifModeController;->access$800()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->encodeGif(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 309
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "Cannot encode gif image"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    move v1, v8

    .line 311
    goto/16 :goto_0

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() getAvailableFileName = null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 303
    goto/16 :goto_0

    .line 313
    :cond_5
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v4, "encodeGif() - end"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v3

    .line 317
    new-instance v13, Lcom/htc/camera/io/SaveImageTask;

    invoke-direct {v13, v3}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 318
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iput-object v3, v13, Lcom/htc/camera/io/SaveImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 319
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iput-object v3, v13, Lcom/htc/camera/io/SaveImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    .line 320
    sget-object v3, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    iput-object v3, v13, Lcom/htc/camera/io/SaveImageTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 321
    iget-wide v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->takenDateTime:J

    iput-wide v3, v13, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    .line 322
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->gpsLocation:Landroid/location/Location;

    iput-object v3, v13, Lcom/htc/camera/io/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 323
    invoke-virtual {v13, v7}, Lcom/htc/camera/io/SaveImageTask;->setFilePathToMediaInfo(Lcom/htc/camera/io/Path;)V

    .line 324
    invoke-virtual {v13}, Lcom/htc/camera/io/SaveImageTask;->insertIntoMediaStore()Z

    .line 326
    invoke-virtual {v13}, Lcom/htc/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v3, :cond_8

    .line 328
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v4, "Save image - Content URI = null"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v11, v2

    .line 336
    :goto_1
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v1}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v2

    const/16 v3, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v1 .. v6}, Lcom/htc/camera/sina/GifModeController;->access$900(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 339
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v1}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v2

    const/16 v3, 0x2717

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v11

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v1 .. v6}, Lcom/htc/camera/sina/GifModeController;->access$1000(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 341
    const/16 v3, 0x2717

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v6, v2

    const/4 v2, 0x1

    aput-object v7, v6, v2

    move-object v2, v1

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v1 .. v6}, Lcom/htc/camera/sina/GifModeController;->access$1100(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 344
    instance-of v1, v7, Lcom/htc/camera/io/DCFPath;

    if-eqz v1, :cond_7

    .line 346
    move-object v0, v7

    check-cast v0, Lcom/htc/camera/io/DCFPath;

    move-object v1, v0

    .line 347
    iget-object v2, v1, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    if-eqz v2, :cond_6

    .line 348
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v3, v3, Lcom/htc/camera/io/DCFInfo;->fileCounterPrefKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    iget v4, v4, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 349
    :cond_6
    iget-object v2, v1, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    if-eqz v2, :cond_7

    .line 350
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v3, v3, Lcom/htc/camera/io/DCFInfo;->dirCounterPrefKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    iget v1, v1, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    invoke-direct {p0, v2, v3, v1}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V

    .line 354
    :cond_7
    const/4 v1, 0x1

    invoke-static {v12, v1}, Lcom/htc/camera/io/FileUtility;->updateCachedFileCount(Ljava/lang/String;I)V

    .line 358
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->getTempFileName()Lcom/htc/camera/io/Path;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_a

    .line 360
    iget-object v1, v1, Lcom/htc/camera/io/Path;->directoryPath:Ljava/lang/String;

    .line 362
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v8

    :goto_3
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    .line 365
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 332
    :cond_8
    invoke-virtual {v13}, Lcom/htc/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 333
    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save image - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v2

    goto/16 :goto_1

    .line 369
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v2, "saveGifImage() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v9

    .line 384
    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 373
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Cannot find available image file location, please check the storage card"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v8

    .line 374
    goto/16 :goto_0

    .line 376
    :catch_1
    move-exception v1

    .line 378
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    const-string v3, "Exception while compressing image."

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v8

    .line 379
    goto/16 :goto_0

    :cond_a
    move-object v1, v10

    goto :goto_2
.end method

.method private updateFileCounter(Lcom/htc/camera/HTCCamera;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 432
    if-eqz p2, :cond_0

    .line 433
    :try_start_0
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 437
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFileCounter() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getTempFileName()Lcom/htc/camera/io/Path;
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeController;

    invoke-virtual {v0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->getTempFileSavingPath(Lcom/htc/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempFileName() - Cannot create directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMP_IMAG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->index:I

    add-int/lit16 v2, v2, 0x2711

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v2, v2, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    new-instance v0, Lcom/htc/camera/io/Path;

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onInsertIntoMediaStore(Lcom/htc/camera/media/MediaInfo;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeController;

    .line 243
    if-eqz v0, :cond_0

    .line 245
    const/16 v2, 0x271d

    iget v3, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->index:I

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeController;->access$600(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 246
    iget-boolean v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2711

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/sina/GifModeController;->access$700(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;I)Z

    .line 249
    :cond_0
    return-void
.end method

.method protected onMediaSaved(Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 205
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeController;

    .line 206
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/sina/GifModeController;->addSavedPictureToList(Ljava/lang/String;)V

    .line 213
    iget v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->index:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    # getter for: Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I
    invoke-static {}, Lcom/htc/camera/sina/GifModeController;->access$100()I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 216
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2716

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v3

    move v4, v3

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeController;->access$300(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 225
    :cond_1
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->isLastMedia:Z

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->clearJpegRawData()V

    .line 228
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->saveGifImage()Z

    move-result v1

    if-nez v1, :cond_3

    .line 229
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2715

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/sina/GifModeController;->access$400(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;I)Z

    .line 234
    :cond_2
    :goto_0
    return-void

    .line 232
    :cond_3
    # getter for: Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;
    invoke-static {v0}, Lcom/htc/camera/sina/GifModeController;->access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;

    move-result-object v1

    const/16 v2, 0x2711

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    aput-object v4, v5, v3

    move v4, v3

    # invokes: Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeController;->access$500(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
