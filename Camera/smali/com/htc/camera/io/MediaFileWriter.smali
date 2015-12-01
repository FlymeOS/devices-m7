.class final Lcom/htc/camera/io/MediaFileWriter;
.super Lcom/htc/camera/component/CameraComponent;
.source "MediaFileWriter.java"

# interfaces
.implements Lcom/htc/camera/io/IMediaFileWriter;


# instance fields
.field private final m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/htc/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SDCardUI:Lcom/htc/camera/io/e;

.field private final m_SaveTaskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/htc/camera/io/MediaFileWriter$SaveHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SavingTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_SavingTimerHandle:Lcom/htc/camera/Handle;

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private volatile m_ThumbnailImagePool:Lcom/htc/camera/media/a;

.field private final m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private final m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

.field private m_WriterThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 116
    const-string v0, "Media File Writer"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    .line 73
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    .line 74
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/MediaFileWriter$1;-><init>(Lcom/htc/camera/io/MediaFileWriter;)V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 119
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/MediaFileWriter$2;-><init>(Lcom/htc/camera/io/MediaFileWriter;)V

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterThread:Ljava/lang/Thread;

    .line 127
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/Handle;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/io/MediaFileWriter;->cancelSavingMedia(Lcom/htc/camera/Handle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->startSavingTimeoutTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->stopSavingTimeoutTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/io/MediaFileWriter;->resumeUpdatingMediaStore(Lcom/htc/camera/Handle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/io/MediaFileWriter;)Lcom/htc/camera/io/e;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/e;)Lcom/htc/camera/io/e;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/io/MediaFileWriter;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/htc/camera/io/MediaFileWriter;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->writerProc()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/io/MediaFileWriter;->prepare(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/io/MediaFileWriter;->prepareInternal(Lcom/htc/camera/io/StorageSlot;)V

    return-void
.end method

.method private cancelSavingMedia(Lcom/htc/camera/Handle;)Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "cancelSavingMedia() - Not implemented"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method private insertOneMediaIntoMediaStore()Z
    .locals 8

    .prologue
    const/16 v7, 0x2714

    const/4 v6, 0x0

    .line 286
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Media store update is suspended"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    monitor-exit v1

    move v0, v6

    .line 319
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    .line 294
    monitor-exit v1

    .line 295
    if-nez v5, :cond_1

    move v0, v6

    .line 296
    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - Handle : "

    invoke-static {v0, v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    :try_start_1
    iget-object v0, v5, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    invoke-virtual {v0}, Lcom/htc/camera/io/SaveMediaTask;->insertIntoMediaStore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "insertOneMediaIntoMediaStore() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    :try_start_2
    sget-object v0, Lcom/htc/camera/io/FileSaveResult;->UNKNOWN_ERROR:Lcom/htc/camera/io/FileSaveResult;

    iput-object v0, v5, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->result:Lcom/htc/camera/io/FileSaveResult;

    .line 308
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 313
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "insertOneMediaIntoMediaStore() - Fail to update media store"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    sget-object v0, Lcom/htc/camera/io/FileSaveResult;->UNKNOWN_ERROR:Lcom/htc/camera/io/FileSaveResult;

    iput-object v0, v5, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->result:Lcom/htc/camera/io/FileSaveResult;

    move-object v0, p0

    move-object v1, p0

    move v2, v7

    move v3, v6

    move v4, v6

    .line 315
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method private onMediaFileSaved(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4

    .prologue
    .line 327
    sget-object v0, Lcom/htc/camera/io/MediaFileWriter;->EVENT_MEDIA_FILE_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    sget-object v3, Lcom/htc/camera/io/FileSaveResult;->SUCCEEDED:Lcom/htc/camera/io/FileSaveResult;

    invoke-direct {v1, p1, v2, v3}, Lcom/htc/camera/io/MediaSaveEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/io/SaveMediaTask;Lcom/htc/camera/io/FileSaveResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 328
    return-void
.end method

.method private onMediaSaveFailed(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4

    .prologue
    .line 343
    sget-object v0, Lcom/htc/camera/io/MediaFileWriter;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-object v3, p1, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->result:Lcom/htc/camera/io/FileSaveResult;

    invoke-direct {v1, p1, v2, v3}, Lcom/htc/camera/io/MediaSaveEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/io/SaveMediaTask;Lcom/htc/camera/io/FileSaveResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 344
    return-void
.end method

.method private onMediaSaved(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4

    .prologue
    .line 335
    sget-object v0, Lcom/htc/camera/io/MediaFileWriter;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    sget-object v3, Lcom/htc/camera/io/FileSaveResult;->SUCCEEDED:Lcom/htc/camera/io/FileSaveResult;

    invoke-direct {v1, p1, v2, v3}, Lcom/htc/camera/io/MediaSaveEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/io/SaveMediaTask;Lcom/htc/camera/io/FileSaveResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 336
    return-void
.end method

.method private onMediaSaving(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V
    .locals 4

    .prologue
    .line 351
    sget-object v0, Lcom/htc/camera/io/MediaFileWriter;->EVENT_MEDIA_SAVING:Lcom/htc/camera/base/EventKey;

    new-instance v1, Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v2, p1, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    sget-object v3, Lcom/htc/camera/io/FileSaveResult;->SUCCEEDED:Lcom/htc/camera/io/FileSaveResult;

    invoke-direct {v1, p1, v2, v3}, Lcom/htc/camera/io/MediaSaveEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/io/SaveMediaTask;Lcom/htc/camera/io/FileSaveResult;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 352
    return-void
.end method

.method private prepare(Lcom/htc/camera/io/StorageSlot;)V
    .locals 2

    .prologue
    .line 359
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 360
    if-eqz v0, :cond_1

    .line 362
    new-instance v1, Lcom/htc/camera/io/MediaFileWriter$5;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/io/MediaFileWriter$5;-><init>(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - Cannot do preparation in background thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - No ISharedBackgroundWorker interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareInternal(Lcom/htc/camera/io/StorageSlot;)V
    .locals 8

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "prepareInternal("

    const-string v2, ") - Start"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    if-nez p1, :cond_3

    .line 385
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_0
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Clear cached file count"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->clearCachedFileCount(Ljava/lang/String;)V

    .line 398
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 399
    new-instance v6, Lcom/htc/camera/Reference;

    invoke-direct {v6}, Lcom/htc/camera/Reference;-><init>()V

    .line 400
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    .line 402
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "prepareInternal() - Get directory/file counters for "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Lcom/htc/camera/io/MediaFileWriter;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    sget-object v4, Lcom/htc/camera/io/FileUtility$InformationSource;->FileSystem:Lcom/htc/camera/io/FileUtility$InformationSource;

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/io/FileUtility$InformationSource;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "prepare() - Cannot get directory/file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 391
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    :cond_4
    iget-object v0, p1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    goto :goto_1

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "prepareInternal() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method private resumeUpdatingMediaStore(Lcom/htc/camera/Handle;)V
    .locals 5

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "resumeUpdatingMediaStore() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 429
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "resumeUpdatingMediaStore() - Handle count : "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 438
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 435
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "resumeUpdatingMediaStore() - Invalid handle"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveOneMedia()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 476
    iget-object v3, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    move-object v7, v0

    .line 479
    monitor-exit v3

    .line 480
    if-nez v7, :cond_0

    move v1, v2

    .line 574
    :goto_0
    return v1

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Start"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Handle : "

    invoke-static {v1, v3, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-boolean v1, v1, Lcom/htc/camera/io/SaveMediaTask;->isSingleShot:Z

    if-eqz v1, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->startSavingTimeoutTimer()V

    .line 490
    :cond_1
    const/4 v8, 0x0

    .line 494
    :try_start_1
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    invoke-virtual {v1}, Lcom/htc/camera/io/SaveMediaTask;->prepareSavingMedia()Z

    move-result v9

    .line 497
    if-eqz v9, :cond_2

    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    instance-of v1, v1, Lcom/htc/camera/io/SaveImageTask;

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-boolean v1, v1, Lcom/htc/camera/io/SaveMediaTask;->prepareThumbnailImage:Z

    if-eqz v1, :cond_2

    .line 499
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    move-object v0, v1

    check-cast v0, Lcom/htc/camera/io/SaveImageTask;

    move-object v3, v0

    .line 500
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 502
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/htc/camera/io/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    .line 503
    if-eqz v1, :cond_2

    .line 505
    iget-object v4, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v5, "saveOneMedia() - Create thumbnail image - start"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v4, v3, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    iget-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->orientation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 507
    :goto_1
    iget-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v3, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v5, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v5, v5, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static/range {v1 .. v6}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    .line 508
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Create thumbnail image - end"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v8, v2

    .line 513
    :cond_2
    if-eqz v9, :cond_3

    .line 514
    :try_start_3
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    invoke-virtual {v1, v2}, Lcom/htc/camera/io/SaveMediaTask;->createThumbnailImageBeforeSavingMedia(Lcom/htc/camera/media/a;)V

    .line 517
    :cond_3
    const/16 v3, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 520
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    invoke-virtual {v1}, Lcom/htc/camera/io/SaveMediaTask;->saveMedia()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    if-eqz v8, :cond_4

    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-wide v1, v1, Lcom/htc/camera/io/SaveMediaTask;->takenDateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 525
    iget-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    invoke-virtual {v1}, Lcom/htc/camera/io/SaveMediaTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_4

    .line 530
    :try_start_4
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-virtual {v1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    iget-wide v3, v3, Lcom/htc/camera/io/SaveMediaTask;->takenDateTime:J

    invoke-interface {v2, v1, v3, v4, v8}, Lcom/htc/camera/aj;->addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 540
    :cond_4
    :goto_2
    const/16 v3, 0x2712

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v6, v7

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 549
    :cond_5
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - Media saved, schedule media store data insertion"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 552
    :try_start_6
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v7}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 553
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 554
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 557
    :goto_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 568
    if-eqz v8, :cond_6

    .line 569
    :goto_4
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 572
    :cond_6
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->stopSavingTimeoutTimer()V

    .line 573
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "saveOneMedia() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    move v6, v2

    .line 506
    goto/16 :goto_1

    .line 532
    :catch_0
    move-exception v1

    .line 534
    :try_start_7
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Error occurs while adding cached thumbnail"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 560
    :catch_1
    move-exception v1

    .line 562
    :goto_5
    :try_start_8
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Fail to save media"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    sget-object v1, Lcom/htc/camera/io/FileSaveResult;->UNKNOWN_ERROR:Lcom/htc/camera/io/FileSaveResult;

    iput-object v1, v7, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->result:Lcom/htc/camera/io/FileSaveResult;

    .line 564
    const/16 v3, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/io/MediaFileWriter;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 568
    if-eqz v8, :cond_6

    goto :goto_4

    .line 556
    :cond_8
    :try_start_9
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "saveOneMedia() - Media store update is suspended"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 557
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 568
    :catchall_2
    move-exception v1

    :goto_6
    if-eqz v8, :cond_9

    .line 569
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 568
    :cond_9
    throw v1

    :catchall_3
    move-exception v1

    move-object v8, v2

    goto :goto_6

    .line 560
    :catch_2
    move-exception v1

    move-object v8, v2

    goto :goto_5
.end method

.method private final startSavingTimeoutTimer()V
    .locals 7

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/htc/camera/io/MediaFileWriter;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Saving file timer"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    .line 596
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSavingTimeoutTimer timerHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/MediaFileWriter$6;-><init>(Lcom/htc/camera/io/MediaFileWriter;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "startSavingTimeoutTimer no run"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final stopSavingTimeoutTimer()V
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/htc/camera/io/MediaFileWriter;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSavingTimeoutTimer timerHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SavingTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/io/MediaFileWriter$7;-><init>(Lcom/htc/camera/io/MediaFileWriter;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "stopSavingTimeoutTimer no run"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writerProc()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "writeProc() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->saveOneMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/htc/camera/io/MediaFileWriter;->insertOneMediaIntoMediaStore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    sget-object v0, Lcom/htc/camera/io/MediaFileWriter;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/IComponent$State;

    .line 692
    sget-object v1, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZING:Lcom/htc/camera/component/IComponent$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v1, :cond_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "writeProc() - Component is deinitialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "writeProc() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 680
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v1, "writeProc() - Interrupted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterThread:Ljava/lang/Thread;

    .line 183
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 184
    return-void
.end method

.method public getMediaQueueCapacity()J
    .locals 2

    .prologue
    .line 192
    const-wide/32 v0, 0x2000000

    return-wide v0
.end method

.method public getMediaQueueSize()J
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/htc/camera/io/SaveImageTask;->getTotalJpegRawDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 228
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->onMediaFileSaved(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->onMediaSaved(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->onMediaSaveFailed(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->onMediaSaving(Lcom/htc/camera/io/MediaFileWriter$SaveHandle;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 240
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 243
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    const v1, 0x7f0a0352

    invoke-virtual {p0, v1}, Lcom/htc/camera/io/MediaFileWriter;->getDimension(I)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 244
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    const v1, 0x7f0a0353

    invoke-virtual {p0, v1}, Lcom/htc/camera/io/MediaFileWriter;->getDimension(I)I

    move-result v1

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 245
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_0

    .line 246
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 247
    :cond_0
    const-class v0, Lcom/htc/camera/media/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/a;

    iput-object v0, p0, Lcom/htc/camera/io/MediaFileWriter;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    .line 250
    invoke-virtual {p0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/io/MediaFileWriter$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/io/MediaFileWriter$4;-><init>(Lcom/htc/camera/io/MediaFileWriter;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/io/MediaFileWriter;->prepare(Lcom/htc/camera/io/StorageSlot;)V

    .line 276
    return-void
.end method

.method public saveMedia(Lcom/htc/camera/io/SaveMediaTask;)Lcom/htc/camera/CloseableHandle;
    .locals 3

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 450
    const-string v0, "task"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    .line 455
    :cond_0
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;-><init>(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/SaveMediaTask;)V

    .line 456
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v2, "saveMedia() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_SaveTaskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_WriterSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;
    .locals 5

    .prologue
    .line 647
    new-instance v0, Lcom/htc/camera/io/MediaFileWriter$8;

    const-string v1, "SuspendUpdatingDB"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/io/MediaFileWriter$8;-><init>(Lcom/htc/camera/io/MediaFileWriter;Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreTaskQueue:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 659
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v2, p0, Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;

    const-string v3, "suspendUpdatingMediaStore() - Handle count : "

    iget-object v4, p0, Lcom/htc/camera/io/MediaFileWriter;->m_MediaStoreUpdateSuspendHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    monitor-exit v1

    .line 662
    return-object v0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
