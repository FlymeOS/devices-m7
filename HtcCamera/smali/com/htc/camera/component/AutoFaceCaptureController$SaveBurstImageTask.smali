.class Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;
.super Lcom/htc/camera/io/SaveImageTask;
.source "AutoFaceCaptureController.java"


# instance fields
.field private final directoryCounter:Lcom/htc/camera/io/FileCounter;

.field private final imageCounter:Lcom/htc/camera/io/FileCounter;

.field private final index:I

.field private final m_Controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/component/AutoFaceCaptureController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureController;Lcom/htc/camera/CaptureHandle;I[BZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, v0, p2, p4}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 214
    iput-boolean p5, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    .line 215
    iput p3, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->index:I

    .line 216
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;
    invoke-static {}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$100()Lcom/htc/camera/io/DCFInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 217
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$200(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 218
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;
    invoke-static {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$300(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/io/FileCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    .line 219
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->prepareThumbnailImage:Z

    .line 220
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isSingleShot:Z

    .line 221
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$400(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$400(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageWidth:Ljava/lang/Integer;

    .line 224
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;
    invoke-static {p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$400(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageHeight:Ljava/lang/Integer;

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;)I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->index:I

    return v0
.end method


# virtual methods
.method protected getAvailableFileName()Lcom/htc/camera/io/DCFPath;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 236
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryPath(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMAG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    iget v2, v2, Lcom/htc/camera/io/FileCounter;->mainCounter:I

    add-int/lit16 v2, v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_SELFIE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->index:I

    add-int/lit16 v2, v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_COVER"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
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

    .line 249
    new-instance v2, Lcom/htc/camera/io/DCFPath;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    return-object v2
.end method

.method protected bridge synthetic getAvailableFileName()Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->getAvailableFileName()Lcom/htc/camera/io/DCFPath;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-super {p0, p1}, Lcom/htc/camera/io/SaveImageTask;->onCreateThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureController;

    .line 294
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->TAG:Ljava/lang/String;

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

    .line 299
    const/16 v2, 0x271a

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->index:I

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 301
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/camera/io/SaveImageTask;->onMediaSaveFailed(Lcom/htc/camera/io/Path;Ljava/lang/Throwable;)V

    .line 302
    return-void
.end method

.method protected onMediaSaved(Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureController;

    .line 275
    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$500(Lcom/htc/camera/component/AutoFaceCaptureController;)Ljava/util/Set;

    move-result-object v6

    monitor-enter v6

    .line 281
    :try_start_0
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$500(Lcom/htc/camera/component/AutoFaceCaptureController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    const/16 v2, 0x2719

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 283
    const/16 v1, 0x2719

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 284
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
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->m_Controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureController;

    .line 313
    if-eqz v0, :cond_0

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$600(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/component/AutoFaceCaptureUI;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v2, 0x0

    .line 318
    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 320
    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;
    invoke-static {}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$100()Lcom/htc/camera/io/DCFInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->directoryCounter:Lcom/htc/camera/io/FileCounter;

    invoke-static {v1, v2}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/MediaProvider;->getBucketID(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->TAG:Ljava/lang/String;

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

    .line 323
    :goto_0
    const/16 v2, 0x2717

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    aput-object v4, v5, v3

    const/4 v4, 0x1

    aput-object v1, v5, v4

    move-object v1, v0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 326
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

    .line 334
    const/4 v3, 0x0

    .line 337
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    .line 339
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v0, 0x1

    .line 356
    :goto_0
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 352
    return v0

    .line 343
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    const-string v3, "onSaveMediaToFile() - Cannot get JPEG raw data from native buffer"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 350
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    const-string v4, "onSaveMediaToFile() - Exception occurred while saving image to file"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->clearJpegRawData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 348
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method protected prepareMediaStoreValues(Lcom/htc/camera/io/Path;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMediaStoreValues() - Set SELFIE type isLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    iget-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->isLastMedia:Z

    if-eqz v1, :cond_0

    .line 369
    const-string v1, "htc_type"

    const-wide/16 v2, 0x1800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const-string v1, "htc_type"

    const-wide/16 v2, 0x800

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method
