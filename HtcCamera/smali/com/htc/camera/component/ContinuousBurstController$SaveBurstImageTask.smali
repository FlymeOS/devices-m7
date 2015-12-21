.class Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "ContinuousBurstController.java"


# instance fields
.field private final directoryCounter:Lcom/htc/camera/io/FileCounter;

.field private final imageCounter:Lcom/htc/camera/io/FileCounter;

.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/component/ContinuousBurstController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/CaptureHandle;I[BZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p1}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 249
    iput-boolean p5, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->isLastMedia:Z

    .line 250
    iput p3, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    .line 251
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;
    invoke-static {}, Lcom/htc/camera/component/ContinuousBurstController;->access$100()Lcom/htc/camera/io/DCFInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 252
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->access$200(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 253
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->access$300(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    .line 254
    iput-boolean v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->prepareThumbnailImage:Z

    .line 255
    iput-boolean v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->isSingleShot:Z

    .line 256
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->access$400(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->access$400(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageWidth:Ljava/lang/Integer;

    .line 259
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->access$400(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageHeight:Ljava/lang/Integer;

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    .line 262
    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;)I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    return v0
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/DCFPath;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMAG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    iget v2, v2, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_BURST"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    add-int/lit16 v2, v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    if-ne v2, v3, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_COVER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v2, v2, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v2, Lcom/htc/camera/io/DCFPath;

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected bridge synthetic getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->getAvailableFileName()Lcom/htc/camera/io/DCFPath;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveImageTask;->onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstController;

    .line 328
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaSaveFailed() - filepath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v2, 0x271a

    iget v3, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 335
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/io/SaveImageTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    .line 336
    return-void
.end method

.method protected onMediaSaved(Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstController;

    .line 309
    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$500(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/util/Set;

    move-result-object v6

    monitor-enter v6

    .line 315
    :try_start_0
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$500(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    const/16 v2, 0x2719

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 317
    const/16 v1, 0x2719

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/component/ContinuousBurstController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 318
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onMediaStoreDataInserted(ZLcom/htc/camera/media/MediaInfo;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstController;

    .line 347
    if-eqz v0, :cond_0

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$600(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/component/ContinuousBurstUI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;
    invoke-static {}, Lcom/htc/camera/component/ContinuousBurstController;->access$100()Lcom/htc/camera/io/DCFInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/MediaProvider;->getBucketID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get bucketID: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    const/16 v2, 0x2717

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    aput-object v4, v5, v3

    const/4 v4, 0x1

    aput-object v1, v5, v4

    move-object v1, v0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 359
    :cond_0
    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected onSaveMediaToFile(Lcom/htc/camera/io/Path;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 367
    const/4 v3, 0x0

    .line 370
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    const/4 v0, 0x1

    .line 389
    :goto_0
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 385
    return v0

    .line 376
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    const-string v3, "onSaveMediaToFile() - Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v1

    .line 383
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onSaveMediaToFile() - Exception occurred while saving image to file"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 381
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 399
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 400
    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 401
    const-string v1, "favorite"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    :goto_0
    return-object v0

    .line 403
    :cond_0
    const-string v1, "favorite"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method
