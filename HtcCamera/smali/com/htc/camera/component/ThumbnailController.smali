.class public Lcom/htc/camera/component/ThumbnailController;
.super Lcom/htc/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/htc/camera/aj;


# static fields
.field private static final m_LocalThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/SessionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

.field private volatile m_IsDeletingMedia:Z

.field private final m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

.field private final m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

.field private volatile m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;

.field private volatile m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

.field private final m_MediaInsertedEventHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_OnGoingCaptures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbnailImagePool:Lcom/htc/camera/media/a;

.field private m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 124
    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/htc/camera/media/ImageMediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/ImageMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    .line 98
    new-instance v0, Lcom/htc/camera/media/ImageMediaInfo;

    invoke-direct {v0}, Lcom/htc/camera/media/ImageMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/htc/camera/component/ThumbnailController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ThumbnailController$1;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_MediaInsertedEventHandler:Lcom/htc/camera/event/a;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/event/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_MediaInsertedEventHandler:Lcom/htc/camera/event/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->onMediaFileSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->onMediaSaveFailed(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/Path;)Lcom/htc/camera/io/Path;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/component/ThumbnailUI;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ThumbnailController;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/ThumbnailController;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->onMediaCaptureFailed(Lcom/htc/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->onMediaCaptureStarted(Lcom/htc/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/media/ImageMediaInfo;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ThumbnailController;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearCachedMediaInfo(Z)V
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/ImageMediaInfo;->clear()V

    .line 242
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/ImageMediaInfo;->clear()V

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/16 v0, 0x2711

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 248
    :cond_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 268
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createThumbnailImage(Z)V
    .locals 28

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    move-object/from16 v23, v0

    .line 282
    if-nez v23, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_0
    return-void

    .line 289
    :cond_0
    invoke-virtual/range {v23 .. v23}, Lcom/htc/camera/component/ThumbnailUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "Cancel creating thumbnail image because UI is paused"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    const/16 v20, 0x0

    .line 297
    const/4 v5, 0x0

    .line 298
    const-wide/16 v18, -0x1

    .line 299
    const/16 v17, 0x0

    .line 300
    const/16 v16, 0x0

    .line 301
    const/4 v15, 0x0

    .line 302
    const/4 v14, 0x0

    .line 304
    monitor-enter p0

    .line 306
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v4, v4, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v4, :cond_11

    .line 308
    const/4 v4, 0x0

    .line 309
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v6, v6, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v8, v8, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v6, v6, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v6, v6, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v8, v8, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v6, v6, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v7, v7, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v6, v7}, Lcom/htc/camera/io/Path;->compareTo(Lcom/htc/camera/io/Path;)I

    move-result v6

    if-lez v6, :cond_e

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v6}, Lcom/htc/camera/media/ImageMediaInfo;->isImage()Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v6}, Lcom/htc/camera/media/ImageMediaInfo;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v5, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v5, v5, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v5}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    .line 316
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v6, Lcom/htc/camera/media/ImageMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    move-object/from16 v17, v0

    .line 317
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v6, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    move-wide/from16 v18, v0

    .line 318
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget v15, v6, Lcom/htc/camera/media/ImageMediaInfo;->orientation:I

    .line 319
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v14, v6, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    move/from16 v27, v4

    move-object v4, v5

    move/from16 v5, v27

    .line 341
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v5, :cond_33

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - Use media information in media store"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v5, Lcom/htc/lib1/mediamanager/MediaManagerStore$Files;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 353
    const-string v9, "favorite"

    .line 354
    const-string v12, "htc_type"

    .line 355
    const-string v21, "media_type"

    .line 356
    const/4 v7, 0x0

    .line 357
    const/4 v6, 0x0

    .line 359
    const/4 v13, 0x0

    .line 362
    const/4 v8, 0x1

    .line 365
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v4

    .line 366
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_data LIKE ?  AND ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IS NULL OR (("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & 48) <> 16 AND ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & 192) <> 64) )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " IS NULL OR ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " & 6144 ) <> 2048 )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " OR "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v11, 0x0

    .line 370
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/16 v22, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v4, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "DCIM"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "%"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v22

    const/4 v10, 0x0

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(_data LIKE ? OR _data LIKE ?) AND ("

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, " IS NULL OR (("

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, " & 48) <> 16 AND ("

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " & 192) <> 64 ) )"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " AND ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " IS NULL OR ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " & 6144 ) <> 2048 )"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " AND ("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " OR "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v12, 0x0

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ThumbnailController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v24

    .line 379
    const/4 v4, 0x0

    .line 381
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v21, "content://htcmediacache/gallery"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const-string v22, "getWhereClause"

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    #invoke-virtual {v9, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #move-result-object v4

    const/4 v4, 0x0

    .line 387
    :goto_3
    if-eqz v4, :cond_32

    if-eqz v8, :cond_32

    .line 389
    const-string v6, "key_where_clause"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    const/4 v4, 0x0

    .line 393
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 394
    const/4 v7, 0x0

    .line 396
    :goto_5
    if-nez v7, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v8, "data from gallery is null."

    invoke-static {v6, v8}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v4, v10

    move-object v6, v11

    .line 416
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "conditions: "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/4 v9, 0x0

    .line 418
    const/16 v21, 0x0

    move/from16 v22, v7

    move-object v8, v4

    move-object v4, v9

    move-object v7, v6

    .line 422
    :goto_7
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    .line 423
    const/16 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v25, "_id"

    aput-object v25, v6, v9

    const/4 v9, 0x1

    const-string v25, "_data"

    aput-object v25, v6, v9

    const/4 v9, 0x2

    const-string v25, "datetaken"

    aput-object v25, v6, v9

    const/4 v9, 0x3

    const-string v25, "mime_type"

    aput-object v25, v6, v9

    const/4 v9, 0x4

    const-string v25, "favorite"

    #aput-object v25, v6, v9

    const/4 v9, 0x5

    const-string v25, "htc_type"

    #aput-object v25, v6, v9

    const/4 v9, 0x4

    const-string v25, "orientation"

    aput-object v25, v6, v9

    const/4 v9, 0x5

    const-string v25, "width"

    aput-object v25, v6, v9

    const/16 v9, 0x6

    const-string v25, "height"

    aput-object v25, v6, v9

    const-string v9, "CAST(datetaken AS INTEGER) DESC, _data DESC LIMIT 0,1"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v6

    .line 430
    if-eqz v6, :cond_15

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    if-lez v9, :cond_15

    move-object v11, v6

    move-object v12, v4

    .line 471
    :goto_8
    if-eqz v11, :cond_1e

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1e

    .line 472
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 474
    :try_start_5
    const-string v5, "_data"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 475
    const-string v5, "datetaken"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 476
    const-string v5, "mime_type"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/camera/io/FileFormat;->fromMimeType(Ljava/lang/String;)Lcom/htc/camera/io/FileFormat;

    move-result-object v17

    .line 477
    const-string v5, "favorite"

    #invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #move-result v5

    #invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    #move-result v16

    const/16 v16, 0x0

    .line 478
    const-string v5, "orientation"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 480
    const-string v5, "width"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 481
    const-string v5, "height"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 482
    invoke-interface {v11, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-interface {v11, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_19

    .line 483
    new-instance v5, Lcom/htc/camera/imaging/Size;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/htc/camera/imaging/Size;-><init>(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v14, v5

    .line 492
    :goto_9
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/htc/camera/io/FileFormat;->isImage()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/lib1/mediamanager/MediaManagerStore$Images;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    :goto_a
    move/from16 v5, v16

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object v10, v4

    move-object v4, v14

    move v14, v15

    .line 512
    :goto_b
    if-eqz v11, :cond_5

    .line 513
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_5
    if-eqz v12, :cond_6

    .line 516
    invoke-virtual {v12}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    move v12, v5

    move-object v15, v6

    move-wide v5, v7

    move-object v7, v9

    move-object v8, v10

    .line 526
    :goto_c
    const/16 v16, 0x0

    .line 527
    sget-object v19, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    .line 528
    const/4 v9, 0x0

    .line 529
    sget-object v13, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_UNKNOWN:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    .line 530
    const/16 v17, 0x0

    .line 531
    const/16 v18, 0x0

    .line 535
    if-eqz v7, :cond_21

    move-object/from16 v17, v4

    move/from16 v20, v14

    move-wide v10, v5

    move-object v6, v7

    .line 551
    :goto_d
    if-eqz v6, :cond_2d

    .line 553
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "The latest media file is \'"

    const-string v7, "\' ("

    const-string v9, ")"

    invoke-static/range {v4 .. v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    new-instance v9, Lcom/htc/camera/MediaDataRetriever;

    invoke-direct {v9, v6}, Lcom/htc/camera/MediaDataRetriever;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 558
    :try_start_8
    invoke-virtual {v15}, Lcom/htc/camera/io/FileFormat;->isImage()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 560
    sget-object v13, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    .line 561
    and-int/lit16 v4, v12, 0xc0

    if-eqz v4, :cond_22

    .line 562
    sget-object v12, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_ZOE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 568
    :goto_e
    :try_start_9
    iget-object v13, v15, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static/range {v9 .. v14}, Lcom/htc/camera/component/ThumbnailController;->getThumbnailImageFromPool(Lcom/htc/camera/MediaDataRetriever;JLcom/htc/camera/imaging/ThumbnailUtility$MediaType;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-result-object v4

    :goto_f
    move-object v5, v15

    move-object v7, v4

    move-object v4, v12

    .line 612
    :goto_10
    if-eqz v9, :cond_7

    .line 614
    invoke-virtual {v9}, Lcom/htc/camera/MediaDataRetriever;->release()V

    :cond_7
    move-object/from16 v27, v7

    move-object v7, v6

    move-object/from16 v6, v27

    .line 618
    :cond_8
    :goto_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    if-eqz v9, :cond_9

    sget-object v9, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    if-ne v4, v9, :cond_9

    .line 623
    :try_start_a
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    move-result-wide v12

    .line 630
    :goto_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    new-instance v14, Lcom/htc/camera/io/Path;

    invoke-direct {v14, v7}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x4

    invoke-interface {v9, v14, v12, v13, v15}, Lcom/htc/camera/media/a;->createThumbnailImage(Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;

    .line 634
    :cond_9
    if-eqz v7, :cond_28

    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/htc/camera/imaging/Size;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_28

    :cond_a
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Lcom/htc/camera/io/FileFormat;->isImage()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 639
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v12, "createThumbnailImage() - Get image pixel size directly"

    invoke-static {v9, v12}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :try_start_b
    new-instance v9, Lcom/htc/camera/io/Path;

    invoke-direct {v9, v7}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize(Lcom/htc/camera/io/Path;)Lcom/htc/camera/imaging/Size;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v9

    .line 649
    :goto_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v13, "createThumbnailImage() - Pixel size : "

    invoke-static {v12, v13, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 653
    monitor-enter p0

    .line 655
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iput-object v8, v12, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    .line 656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    if-eqz v7, :cond_29

    new-instance v8, Lcom/htc/camera/io/Path;

    invoke-direct {v8, v7}, Lcom/htc/camera/io/Path;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_14
    iput-object v7, v12, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 657
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iput-object v5, v7, Lcom/htc/camera/media/ImageMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iput-wide v10, v5, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    .line 659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    move/from16 v0, v20

    iput v0, v5, Lcom/htc/camera/media/ImageMediaInfo;->orientation:I

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iput-object v9, v5, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    .line 661
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v5}, Lcom/htc/camera/media/ImageMediaInfo;->clone()Lcom/htc/camera/media/ImageMediaInfo;

    move-result-object v5

    .line 662
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 665
    if-eqz p1, :cond_c

    .line 668
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 673
    sget-object v6, Lcom/htc/camera/component/ThumbnailController$13;->$SwitchMap$com$htc$camera$imaging$ThumbnailUtility$MediaType:[I

    invoke-virtual {v4}, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    .line 697
    new-instance v4, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {v4}, Lcom/htc/camera/media/MediaInfo;-><init>()V

    .line 698
    invoke-virtual {v4, v5}, Lcom/htc/camera/media/MediaInfo;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 699
    const/16 v6, 0x2711

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object v10, v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 705
    :goto_15
    monitor-enter p0

    .line 707
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v4, :cond_b

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v5, 0x2712

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 709
    :cond_b
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 712
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "createThumbnailImage() - end"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :cond_d
    const/4 v4, 0x1

    move/from16 v27, v4

    move-object v4, v5

    move/from16 v5, v27

    goto/16 :goto_1

    .line 326
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v6}, Lcom/htc/camera/media/ImageMediaInfo;->isImage()Z

    move-result v6

    if-nez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v6}, Lcom/htc/camera/media/ImageMediaInfo;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 328
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v5, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v5, v5, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v5}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v5

    .line 330
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v6, Lcom/htc/camera/media/ImageMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    move-object/from16 v17, v0

    .line 331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v6, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    move-wide/from16 v18, v0

    .line 332
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget v15, v6, Lcom/htc/camera/media/ImageMediaInfo;->orientation:I

    .line 333
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v14, v6, Lcom/htc/camera/media/ImageMediaInfo;->pixelSize:Lcom/htc/camera/imaging/Size;

    move/from16 v27, v4

    move-object v4, v5

    move/from16 v5, v27

    goto/16 :goto_1

    .line 336
    :cond_10
    const/4 v4, 0x1

    move/from16 v27, v4

    move-object v4, v5

    move/from16 v5, v27

    goto/16 :goto_1

    .line 340
    :cond_11
    const/4 v4, 0x1

    move/from16 v27, v4

    move-object v4, v5

    move/from16 v5, v27

    goto/16 :goto_1

    .line 341
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    throw v4

    .line 365
    :cond_12
    sget-object v4, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    goto/16 :goto_2

    .line 382
    :catch_0
    move-exception v8

    .line 383
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v9, "createThumbnailImage() - something goes wrong while checking the media providor from gallery"

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 405
    :cond_13
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/htc/camera/io/StorageSlot;

    move-result-object v6

    .line 406
    if-eqz v6, :cond_14

    .line 407
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    iget-object v9, v9, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DCIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    move-object v6, v12

    goto/16 :goto_6

    .line 413
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v8, "createThumbnailImage() - firstInternalMemorySlot is null"

    invoke-static {v6, v8}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v12

    goto/16 :goto_6

    :cond_15
    move-object/from16 v21, v6

    move-object v9, v4

    .line 445
    :goto_16
    if-eqz v22, :cond_18

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v6, "Use default conditions(DCIM) for querying"

    invoke-static {v4, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/16 v22, 0x0

    .line 449
    invoke-static {}, Lcom/htc/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v4, v10

    move-object v6, v11

    .line 457
    :goto_17
    const/4 v7, 0x1

    move-object v8, v4

    move/from16 v4, v22

    move-object/from16 v27, v21

    move/from16 v21, v7

    move-object v7, v6

    move-object/from16 v6, v27

    .line 467
    :goto_18
    if-nez v21, :cond_2e

    move-object v11, v6

    move-object v12, v9

    goto/16 :goto_8

    .line 432
    :catch_1
    move-exception v9

    .line 433
    :goto_19
    if-eqz v6, :cond_30

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    const/16 v21, 0x0

    .line 437
    :goto_1a
    if-eqz v4, :cond_16

    .line 439
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 440
    const/4 v4, 0x0

    .line 442
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v9, "Failed to query"

    invoke-static {v6, v9}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v4

    goto :goto_16

    :cond_17
    move-object v4, v13

    move-object v6, v12

    .line 455
    goto :goto_17

    .line 460
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v6, "Failed to query while querying data from DCIM directory"

    invoke-static {v4, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v4, 0x0

    .line 462
    if-eqz v21, :cond_2f

    .line 463
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 464
    const/4 v6, 0x0

    move/from16 v21, v4

    move/from16 v4, v22

    goto :goto_18

    .line 485
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 494
    :cond_1a
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Lcom/htc/camera/io/FileFormat;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/lib1/mediamanager/MediaManagerStore$Video;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_a

    .line 497
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v6, "media type is not image or video"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_a

    .line 505
    :catch_2
    move-exception v5

    move-object v9, v5

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object v10, v4

    move-object v4, v14

    move/from16 v5, v16

    move v14, v15

    .line 507
    :goto_1b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v15, "Exception occurred while querying image file"

    invoke-static {v13, v15, v9}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 508
    const/4 v9, 0x0

    .line 512
    if-eqz v11, :cond_1c

    .line 513
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_1c
    if-eqz v12, :cond_1d

    .line 516
    invoke-virtual {v12}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1d
    move v12, v5

    move-object v15, v6

    move-wide v5, v7

    move-object v7, v9

    move-object v8, v10

    .line 519
    goto/16 :goto_c

    .line 500
    :cond_1e
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v5, "No data from MediaStore."

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 501
    const/4 v9, 0x0

    move-object v4, v14

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v10, v20

    move v14, v15

    goto/16 :goto_b

    .line 512
    :catchall_1
    move-exception v4

    if-eqz v11, :cond_1f

    .line 513
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_1f
    if-eqz v12, :cond_20

    .line 516
    invoke-virtual {v12}, Landroid/content/ContentProviderClient;->release()Z

    .line 512
    :cond_20
    throw v4

    .line 545
    :cond_21
    const/4 v8, 0x0

    .line 546
    const/4 v6, 0x0

    .line 547
    const-wide/16 v10, -0x1

    move/from16 v20, v9

    goto/16 :goto_d

    .line 563
    :cond_22
    :try_start_12
    invoke-virtual {v9}, Lcom/htc/camera/MediaDataRetriever;->isPanoramaPlusImage()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 565
    sget-object v12, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_PANOPLUS:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    goto/16 :goto_e

    .line 570
    :cond_23
    invoke-virtual {v15}, Lcom/htc/camera/io/FileFormat;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 572
    sget-object v12, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_VIDEO:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 573
    :try_start_13
    monitor-enter p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 575
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v4}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 577
    const-string v4, "ThumbnailController"

    const-string v5, "Use latest recorded video thumbnail image"

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_25

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    .line 591
    :cond_24
    :goto_1c
    iget-object v13, v15, Lcom/htc/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static/range {v9 .. v14}, Lcom/htc/camera/component/ThumbnailController;->getThumbnailImageFromPool(Lcom/htc/camera/MediaDataRetriever;JLcom/htc/camera/imaging/ThumbnailUtility$MediaType;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-result-object v4

    .line 592
    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_f

    :catchall_2
    move-exception v5

    move-object/from16 v16, v4

    move-object v4, v5

    :goto_1d
    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    throw v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 598
    :catch_3
    move-exception v4

    move-object v5, v4

    move-object v4, v12

    .line 600
    :goto_1e
    :try_start_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v7, "Exception occurred while creating thumbnail image"

    invoke-static {v6, v7, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    const/4 v8, 0x0

    .line 602
    const/4 v7, 0x0

    .line 603
    if-eqz v16, :cond_2a

    .line 606
    const/4 v6, 0x0

    .line 607
    sget-object v5, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 612
    :goto_1f
    if-eqz v9, :cond_8

    .line 614
    invoke-virtual {v9}, Lcom/htc/camera/MediaDataRetriever;->release()V

    goto/16 :goto_11

    .line 582
    :cond_25
    :try_start_19
    const-string v4, "ThumbnailController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Latest recorded video is \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v7}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\', but no thumbnail image"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v16, 0x0

    goto :goto_1c

    .line 586
    :cond_26
    invoke-virtual {v9}, Lcom/htc/camera/MediaDataRetriever;->isZoeVideo()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 588
    sget-object v12, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_ZOE_VIDEO:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_1c

    .line 612
    :catchall_3
    move-exception v4

    move-object/from16 v9, v18

    :goto_20
    if-eqz v9, :cond_27

    .line 614
    invoke-virtual {v9}, Lcom/htc/camera/MediaDataRetriever;->release()V

    .line 612
    :cond_27
    throw v4

    .line 625
    :catch_4
    move-exception v9

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createThumbnailImage() - Fail to get file time for \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v9}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    const-wide/16 v12, -0x1

    goto/16 :goto_12

    .line 644
    :catch_5
    move-exception v9

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v13, "createThumbnailImage() - Fail to get image pixel size"

    invoke-static {v12, v13, v9}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    move-object/from16 v9, v17

    goto/16 :goto_13

    .line 656
    :cond_29
    const/4 v7, 0x0

    goto/16 :goto_14

    .line 662
    :catchall_4
    move-exception v4

    :try_start_1a
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    throw v4

    .line 678
    :pswitch_0
    new-instance v4, Lcom/htc/camera/as;

    invoke-direct {v4}, Lcom/htc/camera/as;-><init>()V

    .line 679
    invoke-virtual {v4, v5}, Lcom/htc/camera/as;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 680
    const-string v5, "ThumbnailController"

    const-string v6, "sendBackToUI this is a Zoe file"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/16 v6, 0x2711

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object v10, v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_15

    .line 686
    :pswitch_1
    new-instance v4, Lcom/htc/camera/aq;

    invoke-direct {v4}, Lcom/htc/camera/aq;-><init>()V

    .line 687
    invoke-virtual {v4, v5}, Lcom/htc/camera/aq;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 688
    const-string v5, "ThumbnailController"

    const-string v6, "sendBackToUI this is a PanoramaPlus file"

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const/16 v6, 0x2711

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object v10, v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_15

    .line 693
    :pswitch_2
    const/16 v6, 0x2711

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v9, v4

    const/4 v4, 0x1

    aput-object v10, v9, v4

    move-object/from16 v4, p0

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_15

    .line 709
    :catchall_5
    move-exception v4

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    throw v4

    .line 612
    :catchall_6
    move-exception v4

    goto/16 :goto_20

    .line 598
    :catch_6
    move-exception v4

    move-object v5, v4

    move-object/from16 v9, v18

    move-object v4, v13

    goto/16 :goto_1e

    :catch_7
    move-exception v4

    move-object v5, v4

    move-object v4, v13

    goto/16 :goto_1e

    .line 592
    :catchall_7
    move-exception v4

    goto/16 :goto_1d

    .line 505
    :catch_8
    move-exception v4

    move-object v9, v4

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object/from16 v10, v20

    move-object v4, v14

    move v14, v15

    goto/16 :goto_1b

    :catch_9
    move-exception v5

    move-object v9, v5

    move-object/from16 v6, v17

    move-wide/from16 v7, v18

    move-object v10, v4

    move-object v4, v14

    move/from16 v5, v16

    move v14, v15

    goto/16 :goto_1b

    .line 432
    :catch_a
    move-exception v6

    move-object/from16 v6, v21

    goto/16 :goto_19

    :cond_2a
    move-object/from16 v5, v19

    move-object/from16 v6, v16

    goto/16 :goto_1f

    :cond_2b
    move-object v12, v13

    move-object/from16 v4, v16

    goto/16 :goto_f

    :cond_2c
    move-object v12, v13

    goto/16 :goto_e

    :cond_2d
    move-object/from16 v9, v18

    move-object v4, v13

    move-object/from16 v5, v19

    move-object/from16 v7, v16

    goto/16 :goto_10

    :cond_2e
    move-object/from16 v21, v6

    move/from16 v22, v4

    move-object v4, v9

    goto/16 :goto_7

    :cond_2f
    move-object/from16 v6, v21

    move/from16 v21, v4

    move/from16 v4, v22

    goto/16 :goto_18

    :cond_30
    move-object/from16 v21, v6

    goto/16 :goto_1a

    :cond_31
    move v7, v8

    goto/16 :goto_5

    :cond_32
    move-object v4, v6

    move-object v6, v7

    goto/16 :goto_4

    :cond_33
    move/from16 v12, v16

    move-wide/from16 v5, v18

    move-object v7, v4

    move-object/from16 v8, v20

    move-object v4, v14

    move v14, v15

    move-object/from16 v15, v17

    goto/16 :goto_c

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Lcom/htc/camera/MediaDataRetriever;JLcom/htc/camera/imaging/ThumbnailUtility$MediaType;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 807
    const-class v7, Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v7

    if-nez p0, :cond_0

    .line 809
    :try_start_0
    const-string v0, "mediaDataRetriever"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 810
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 813
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/MediaDataRetriever;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 815
    const-string v0, "ThumbnailController"

    const-string v1, "getThumbnailImageFromPool(\'"

    const-string v3, "\', \'"

    const-string v5, "\')"

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 816
    const-string v0, "ThumbnailController"

    const-string v1, "getThumbnailImageFromPool() - File time = "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    const-string v0, "ThumbnailController"

    const-string v1, "getThumbnailImageFromPool() - Orientation = "

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 820
    if-nez v2, :cond_1

    .line 822
    const-string v0, "filePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 906
    :goto_0
    monitor-exit v7

    return-object v0

    .line 827
    :cond_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 829
    iget-object v3, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 835
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 844
    :goto_1
    if-eqz v1, :cond_3

    .line 846
    :try_start_4
    sget-object v1, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 847
    sget-object v1, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 848
    const-string v1, "ThumbnailController"

    const-string v2, "getThumbnailImageFromPool() - Use pool image directly"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 837
    :catch_0
    move-exception v1

    .line 839
    const-string v1, "ThumbnailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailImageFromPool() - Fail to check existence of file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v1, 0x0

    goto :goto_1

    .line 854
    :cond_3
    const-string v1, "ThumbnailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailImageFromPool() - File \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not existent, return NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v1, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 856
    sget-object v1, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v6

    .line 857
    goto/16 :goto_0

    .line 866
    :cond_4
    :try_start_5
    const-string v0, "ThumbnailController"

    const-string v1, "getThumbnailImageFromPool() - Create thumbnail image - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/htc/camera/component/ThumbnailController$13;->$SwitchMap$com$htc$camera$imaging$ThumbnailUtility$MediaType:[I

    invoke-virtual {p3}, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 876
    :pswitch_0
    invoke-static {v2, p3, p5}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 879
    :goto_2
    const-string v0, "ThumbnailController"

    const-string v3, "getThumbnailImageFromPool() - Create thumbnail image - end"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 886
    if-nez v1, :cond_5

    .line 888
    :try_start_6
    const-string v0, "ThumbnailController"

    const-string v1, "No thumbnail image created"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v6

    .line 889
    goto/16 :goto_0

    .line 870
    :pswitch_1
    :try_start_7
    invoke-static {p0}, Lcom/htc/camera/imaging/ThumbnailUtility;->b(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 873
    :pswitch_2
    invoke-static {p0}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Lcom/htc/camera/MediaDataRetriever;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    goto :goto_2

    .line 881
    :catch_1
    move-exception v0

    .line 883
    :try_start_8
    const-string v1, "ThumbnailController"

    const-string v2, "Exception occurred while creating thumbnail image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 884
    goto/16 :goto_0

    .line 893
    :cond_5
    :goto_3
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_6

    .line 895
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 896
    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 897
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_3

    .line 901
    :cond_6
    new-instance v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v0, v2, p1, p2, v1}, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 902
    sget-object v2, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    .line 906
    goto/16 :goto_0

    .line 867
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isIngorableFile(Lcom/htc/camera/io/Path;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1172
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v2, "^.{4}\\d{4}_BURST\\d+\\..+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v2, "^.{4}\\d{4}_SELFIE\\d+\\..+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v2, "^.{4}\\d{4}_ZOE((\\d+)|VIDEO)\\..+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return v0

    .line 1178
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v2, "^ZOE_\\d{4}\\.[jJ][pP][eE]?[gG]$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    .line 1398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onMediaCaptureFailed(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 1199
    monitor-enter p0

    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    monitor-exit p0

    .line 1206
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1205
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaCaptureStarted(Lcom/htc/camera/CaptureHandle;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1214
    monitor-enter p0

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v7, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v6, v7, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1219
    :cond_0
    monitor-exit p0

    .line 1220
    return-void

    :cond_1
    move v0, v5

    .line 1218
    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaFileSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1228
    if-nez p1, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "onMediaFileSaved() - Media : "

    iget-object v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    const-string v3, ", taken time : "

    iget-object v4, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-wide v4, v4, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1235
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->isIngorableFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaFileSaved() - Ignore burst and Zoe files, file path is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_2
    monitor-enter p0

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    iget-object v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-wide v2, v2, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    iget-object v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-wide v2, v2, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/Path;->compareTo(Lcom/htc/camera/io/Path;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 1247
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "onMediaFileSaved() - Last saved media : "

    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    const-string v3, ", taken time : "

    iget-object v4, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v4, v4, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1248
    monitor-exit p0

    goto/16 :goto_0

    .line 1257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1252
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0, v1}, Lcom/htc/camera/media/ImageMediaInfo;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 1255
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-nez v0, :cond_5

    .line 1256
    monitor-exit p0

    goto/16 :goto_0

    .line 1257
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1261
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v6, v6, v1}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onMediaInserted(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1269
    monitor-enter p0

    .line 1271
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    :cond_1
    monitor-exit p0

    .line 1281
    :goto_0
    return-void

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "onMediaInserted() - Media store content change, update thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    .line 1278
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 1279
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    .line 1279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onMediaSaveFailed(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1312
    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v2, :cond_2

    move v2, v0

    .line 1313
    :goto_0
    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v3, v3, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v3, v3, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v4, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v4, v4, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v3, v4}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1314
    :goto_1
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 1316
    :cond_0
    monitor-enter p0

    .line 1318
    if-eqz p1, :cond_5

    .line 1320
    :try_start_0
    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v1, :cond_4

    .line 1321
    monitor-exit p0

    .line 1335
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    .line 1312
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1313
    goto :goto_1

    .line 1322
    :cond_4
    if-eqz v0, :cond_7

    .line 1324
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaveFailed() - Fail to save media, update thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    .line 1331
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_6

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1333
    :cond_6
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1328
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1329
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2

    .prologue
    .line 1289
    if-nez p1, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-boolean v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_2

    .line 1295
    monitor-enter p0

    .line 1297
    :try_start_0
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1299
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->addNewMedia(Lcom/htc/camera/media/MediaInfo;)V

    goto :goto_0

    .line 1299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCachedThumbnailImage(Ljava/lang/String;JLandroid/graphics/Bitmap;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 134
    if-nez p1, :cond_0

    .line 136
    const-string v1, "filePath"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 177
    :goto_0
    return v0

    .line 139
    :cond_0
    if-nez p4, :cond_1

    .line 141
    const-string v1, "thumb"

    invoke-static {v1}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "addCachedThumbnailImage(\'"

    const-string v3, "\', "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    const-class v1, Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v1

    .line 151
    :try_start_0
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 153
    iget-object v3, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    sget-object v2, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 156
    sget-object v2, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 157
    iput-wide p2, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    .line 158
    iget-object v2, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    .line 160
    monitor-exit v1

    move v0, v6

    goto :goto_0

    .line 165
    :cond_3
    :goto_1
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    .line 167
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 168
    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 173
    :cond_4
    :try_start_1
    new-instance v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p1, p2, p3, v2}, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 174
    sget-object v2, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 177
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v6

    goto/16 :goto_0
.end method

.method public final addNewMedia(Lcom/htc/camera/media/MediaInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 188
    if-nez p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 194
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "addNewMedia() - "

    const-string v2, ", taken time : "

    iget-wide v3, p1, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->isIngorableFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNewMedia() - Ignore burst and Zoe files, file path is \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 204
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_2
    monitor-enter p0

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v1, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v1, p1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-wide v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->takenTime:J

    iget-wide v2, p1, Lcom/htc/camera/media/MediaInfo;->takenTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v1, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/Path;->compareTo(Lcom/htc/camera/io/Path;)I

    move-result v0

    if-gez v0, :cond_6

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastSavedMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/camera/media/ImageMediaInfo;->copyFrom(Lcom/htc/camera/media/MediaInfo;)V

    .line 224
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 228
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v5, v1}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 218
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 222
    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    .line 224
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "addNewMedia() - Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 725
    iput-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_GalleryBaseBitmap:Landroid/graphics/Bitmap;

    .line 729
    :cond_0
    iput-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    .line 732
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/ThumbnailController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailController$2;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 742
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 743
    return-void
.end method

.method public final disableAutoUpdate()Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 753
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "disableAutoUpdate() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    .line 767
    :goto_0
    return-object v0

    .line 760
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "DAU"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - New handle : "

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Handle count : "

    iget-object v3, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    goto :goto_0
.end method

.method public final enableAutoUpdate(Lcom/htc/camera/Handle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 777
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 778
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    if-nez p1, :cond_2

    .line 787
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/16 v0, 0x2711

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 915
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 934
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 920
    :sswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    .line 924
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    .line 927
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    .line 931
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->onMediaInserted(Landroid/net/Uri;)V

    goto :goto_0

    .line 915
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/16 v2, 0x2711

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 945
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 971
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 974
    :goto_0
    return-void

    .line 949
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/htc/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V

    goto :goto_0

    .line 956
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 964
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ignoreCapture(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 1378
    if-nez p1, :cond_0

    .line 1388
    :goto_0
    return-void

    .line 1381
    :cond_0
    monitor-enter p0

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    monitor-exit p0

    goto :goto_0

    .line 1387
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1385
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_2

    .line 1386
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1387
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 983
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 986
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 989
    const-class v0, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ThumbnailController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/IMediaFileWriter;

    .line 990
    const-class v1, Lcom/htc/camera/media/a;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ThumbnailController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/a;

    iput-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailImagePool:Lcom/htc/camera/media/a;

    .line 993
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$3;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1007
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$4;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1015
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->captureStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$5;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1023
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->deletingLatestMediaEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$6;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1047
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$7;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$7;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1081
    if-eqz v0, :cond_0

    .line 1083
    sget-object v1, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_FILE_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$8;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$8;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/io/IMediaFileWriter;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1091
    sget-object v1, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$9;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$9;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/io/IMediaFileWriter;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1099
    sget-object v1, Lcom/htc/camera/io/IMediaFileWriter;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/ThumbnailController$10;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/ThumbnailController$10;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-interface {v0, v1, v3}, Lcom/htc/camera/io/IMediaFileWriter;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1110
    :goto_0
    iget-object v0, v2, Lcom/htc/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ThumbnailController$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailController$11;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1157
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/ThumbnailController$12;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ThumbnailController$12;-><init>(Lcom/htc/camera/component/ThumbnailController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1165
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method link(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    .line 1191
    return-void
.end method

.method public removeCachedThumbnailImage(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1344
    if-nez p1, :cond_0

    .line 1346
    const-string v0, "filePath"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    move v0, v1

    .line 1367
    :goto_0
    return v0

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v2, "removeCachedThumbnailImage(\'"

    const-string v3, "\')"

    invoke-static {v0, v2, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1353
    const-class v2, Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v2

    .line 1356
    :try_start_0
    sget-object v0, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 1358
    iget-object v4, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1360
    sget-object v1, Lcom/htc/camera/component/ThumbnailController;->m_LocalThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1361
    iget-object v0, v0, Lcom/htc/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1362
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1367
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public final updateThumbnailImageDirectly(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1408
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 1409
    invoke-virtual {p0}, Lcom/htc/camera/component/ThumbnailController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :cond_0
    :goto_0
    return v3

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v2, "updateThumbnailImageDirectly()"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-nez v1, :cond_3

    .line 1420
    :cond_2
    new-instance p1, Lcom/htc/camera/media/MediaInfo;

    invoke-direct {p1, v0, v0}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/FileFormat;)V

    move-object p2, v0

    .line 1426
    :cond_3
    invoke-direct {p0, p2}, Lcom/htc/camera/component/ThumbnailController;->composeGalleryImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1429
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    if-eqz v1, :cond_4

    .line 1430
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v2, 0x2711

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v0, v5, v6

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 1440
    goto :goto_0

    .line 1433
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;

    const-string v2, "updateThumbnailImageDirectly() - No UI"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public waitForSavingMedia(Lcom/htc/camera/CaptureHandle;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1448
    if-nez p1, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;

    const/16 v2, 0x2713

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
