.class public Lcom/htc/camera/splitcapture/SplitPhotoController;
.super Lcom/htc/camera/splitcapture/ISplitPhotoController;
.source "SplitPhotoController.java"

# interfaces
.implements Lcom/htc/camera/z;


# instance fields
.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_CurrentImageID:Ljava/lang/Long;

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_ExifTags:Ljava/util/Hashtable;
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

.field private m_FileCounter:Lcom/htc/camera/io/FileCounter;

.field private m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

.field private m_FirstImageResolutionProvider:Lcom/htc/camera/splitcapture/a;

.field private m_IsPostViewReceived:Z

.field private m_JpegDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;",
            ">;"
        }
    .end annotation
.end field

.field private final m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

.field private m_OperationTimeoutController:Lcom/htc/camera/debug/a;

.field private m_SelectedExifTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_SplitPhotoResolutionProvider:Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;

.field private m_SplitPhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 196
    const-string v0, "Split Photo Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    .line 169
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/splitcapture/SplitPhotoController$1;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 197
    return-void
.end method

.method private abnormalReset()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "abnormalReset()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->ignoreCaptureHandle()V

    .line 210
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->releaseResources()V

    .line 215
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/16 v1, 0x2742

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/splitcapture/SplitPhotoUI;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->onShutterReceived(Lcom/htc/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->onPostViewJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->onJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method private decodeByteArray([BLandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 241
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 244
    :cond_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 245
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 246
    iput-object p4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 249
    if-eqz p3, :cond_2

    .line 254
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v2, p3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 271
    :cond_1
    :goto_0
    return-object v0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v3, "decodeByteArray() - Error: "

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 269
    :cond_2
    array-length v0, p1

    invoke-static {p1, v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private findImageID()J
    .locals 4

    .prologue
    .line 331
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    :goto_1
    return-wide v0

    .line 331
    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 337
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method private ignoreCaptureHandle()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_0

    .line 399
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->ignoreCapture(Lcom/htc/camera/CaptureHandle;)V

    .line 403
    :cond_1
    return-void
.end method

.method private lockPhotoResolution()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 474
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 475
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "lockPhotoResolution() - Cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->unlockPhotoResolution()V

    .line 486
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 487
    new-instance v1, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Resolution;)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProvider:Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;

    .line 489
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProvider:Lcom/htc/camera/splitcapture/SplitPhotoController$SplitPhotoResolutionProvider;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private onCaptureComplete()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->releaseResources()V

    .line 498
    return-void
.end method

.method private onImageIDSelected(J)V
    .locals 4

    .prologue
    .line 505
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    .line 507
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_0
    return-void
.end method

.method private onJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x2

    .line 520
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - Invalid capture handle, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_IsPostViewReceived:Z

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - No Post view"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->abnormalReset()V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onJpegReceived() - Handle: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, ", ImageID: "

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", Jpeg: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->findImageID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_5

    .line 552
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->abnormalReset()V

    goto :goto_0

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    invoke-direct {v2, p2}, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 561
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 564
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_6

    .line 565
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    invoke-static {v0, p2}, Lcom/htc/camera/imaging/ImageUtility;->extractExif(Ljava/util/Set;[B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    .line 568
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lt v0, v4, :cond_7

    .line 570
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 571
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->processFinalImage()V

    goto/16 :goto_0

    .line 574
    :cond_7
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->ignoreCaptureHandle()V

    goto/16 :goto_0
.end method

.method private onPostViewJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 583
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 584
    if-nez v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onPostViewJpegReceived() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 591
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onPostViewJpegReceived() - Invalid capture handle, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v2, "onPostViewJpegReceived() - Handle: "

    const-string v3, " Jpeg: "

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, p1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    iput-boolean v10, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_IsPostViewReceived:Z

    .line 599
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/imaging/Size;

    .line 604
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :try_start_1
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getPreviewFormat()I

    move-result v2

    iget v3, v6, Lcom/htc/camera/imaging/Size;->width:I

    iget v4, v6, Lcom/htc/camera/imaging/Size;->height:I

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 606
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v6, Lcom/htc/camera/imaging/Size;->width:I

    iget v5, v6, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 607
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 617
    invoke-static {v7}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 620
    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v1

    .line 621
    iget v2, v1, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v2, v2, 0x4

    .line 622
    iget v3, v1, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 623
    new-instance v4, Landroid/graphics/Rect;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v4, v2, v9, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v0, v8, v4, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->decodeByteArray([BLandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 624
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v0, v2, :cond_4

    .line 627
    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->bitmapFlipX(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 628
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    .line 633
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->findImageID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-nez v1, :cond_3

    .line 636
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->abnormalReset()V

    goto/16 :goto_0

    .line 609
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 611
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v2, "onPostViewJpegReceived() - Error"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->abnormalReset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 617
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v8

    :goto_3
    invoke-static {v7}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 639
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/16 v2, 0x271a

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CurrentImageID:Ljava/lang/Long;

    aput-object v3, v5, v9

    aput-object v0, v5, v10

    move-object v0, p0

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 617
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_3

    .line 609
    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private onShutterReceived(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 650
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onShutterReceived() - Invalid capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "onShutterReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    goto :goto_0
.end method

.method private processFinalImage()V
    .locals 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 667
    new-instance v9, Lcom/htc/camera/imaging/Size;

    invoke-direct {v9, v11, v11}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 668
    new-instance v10, Lcom/htc/camera/imaging/Size;

    invoke-direct {v10}, Lcom/htc/camera/imaging/Size;-><init>()V

    move v1, v2

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->size:Lcom/htc/camera/imaging/Size;

    .line 672
    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 673
    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 675
    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "processFinalImage() - Jpeg["

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    const-string v7, "], size: "

    aput-object v7, v6, v13

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "x"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    iget v5, v9, Lcom/htc/camera/imaging/Size;->width:I

    if-le v5, v3, :cond_0

    .line 679
    iput v3, v9, Lcom/htc/camera/imaging/Size;->width:I

    .line 680
    iput v0, v9, Lcom/htc/camera/imaging/Size;->height:I

    .line 683
    :cond_0
    iget v5, v10, Lcom/htc/camera/imaging/Size;->width:I

    if-ge v5, v3, :cond_1

    .line 685
    iput v3, v10, Lcom/htc/camera/imaging/Size;->width:I

    .line 686
    iput v0, v10, Lcom/htc/camera/imaging/Size;->height:I

    .line 669
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 690
    :cond_2
    iget v0, v9, Lcom/htc/camera/imaging/Size;->width:I

    if-eq v0, v11, :cond_3

    iget v0, v10, Lcom/htc/camera/imaging/Size;->width:I

    if-nez v0, :cond_4

    .line 785
    :cond_3
    :goto_1
    return-void

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "processFinalImage() - Minimum size: "

    aput-object v3, v1, v2

    iget v3, v9, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    const-string v3, "x"

    aput-object v3, v1, v13

    const/4 v3, 0x3

    iget v5, v9, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x4

    const-string v5, ", Max size: "

    aput-object v5, v1, v3

    const/4 v3, 0x5

    iget v5, v10, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x6

    const-string v5, "x"

    aput-object v5, v1, v3

    const/4 v3, 0x7

    iget v5, v10, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget v0, v9, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, v9, Lcom/htc/camera/imaging/Size;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 696
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 699
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 702
    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoController$7;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    move-object v1, v4

    :goto_2
    move v5, v2

    move-object v6, v1

    .line 714
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v5, v1, :cond_8

    .line 716
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->size:Lcom/htc/camera/imaging/Size;

    iget v12, v1, Lcom/htc/camera/imaging/Size;->width:I

    .line 717
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    int-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->size:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    .line 722
    sget-object v7, Lcom/htc/camera/splitcapture/SplitPhotoController$7;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    move-object v7, v4

    move-object v8, v4

    .line 764
    :goto_4
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    int-to-long v13, v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;->jpegData:[B

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0, v1, v6, v8, v13}, Lcom/htc/camera/splitcapture/SplitPhotoController;->decodeByteArray([BLandroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 767
    if-eqz v7, :cond_7

    .line 771
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    if-ge v12, v1, :cond_a

    .line 772
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v1, v2, v2, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 773
    :goto_5
    invoke-virtual {v11, v6, v1, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 714
    :goto_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 706
    :pswitch_0
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v5, v10, Lcom/htc/camera/imaging/Size;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 711
    :pswitch_1
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    iget v5, v10, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v5, v5, 0x2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_2

    .line 727
    :pswitch_2
    div-int/lit8 v7, v12, 0x2

    .line 728
    div-int/lit8 v8, v12, 0x2

    div-int/lit8 v13, v7, 0x2

    sub-int v13, v8, v13

    .line 729
    add-int/2addr v7, v13

    .line 730
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v13, v2, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 733
    iget v1, v9, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v7, v1, 0x2

    .line 734
    iget v1, v9, Lcom/htc/camera/imaging/Size;->width:I

    add-int/lit8 v13, v5, 0x1

    mul-int/2addr v13, v7

    sub-int/2addr v1, v13

    .line 735
    sget-object v13, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v13}, Lcom/htc/camera/rotate/UIRotation;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 736
    mul-int v1, v7, v5

    .line 737
    :cond_5
    add-int v13, v1, v7

    .line 739
    new-instance v7, Landroid/graphics/Rect;

    iget v14, v9, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {v7, v1, v2, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_4

    .line 746
    :pswitch_3
    div-int/lit8 v7, v1, 0x2

    .line 747
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v1, v8

    .line 748
    add-int/2addr v7, v1

    .line 749
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v1, v12, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 752
    iget v1, v9, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v7, v1, 0x2

    .line 753
    iget v1, v9, Lcom/htc/camera/imaging/Size;->height:I

    add-int/lit8 v13, v5, 0x1

    mul-int/2addr v13, v7

    sub-int/2addr v1, v13

    .line 754
    sget-object v13, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v13}, Lcom/htc/camera/rotate/UIRotation;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 755
    mul-int v1, v7, v5

    .line 756
    :cond_6
    add-int v13, v1, v7

    .line 758
    new-instance v7, Landroid/graphics/Rect;

    iget v14, v9, Lcom/htc/camera/imaging/Size;->width:I

    invoke-direct {v7, v2, v1, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_4

    .line 776
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v7, "processFinalImage() - Unexpected src and dst rectangle"

    invoke-static {v1, v7}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 780
    :cond_8
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 781
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 783
    :cond_9
    new-instance v0, Lcom/htc/camera/io/SaveBitmapImageTask;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/io/SaveBitmapImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Hashtable;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

    .line 784
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_1

    :cond_a
    move-object v1, v4

    goto/16 :goto_5

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private releaseResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 792
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "releaseResources()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 796
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 799
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ExifTags:Ljava/util/Hashtable;

    .line 801
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

    .line 802
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 803
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 804
    iput-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 806
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->unlockPhotoResolution()V

    .line 807
    return-void
.end method

.method private swipeImages(JJ)V
    .locals 4

    .prologue
    .line 811
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    .line 812
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/splitcapture/SplitPhotoController$JpegData;

    .line 813
    if-eqz v0, :cond_0

    .line 814
    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :cond_0
    if-eqz v1, :cond_1

    .line 816
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_1
    return-void
.end method

.method private unlockPhotoResolution()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 924
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SplitPhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 930
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionProvider:Lcom/htc/camera/splitcapture/a;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    .line 933
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_0
    return v2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture() - Capture canceled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/16 v1, 0x271e

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0
.end method

.method public enter(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return v3

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "enter()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionProvider:Lcom/htc/camera/splitcapture/a;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method public exit(I)V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Already exited"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "exit()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionHandle:Lcom/htc/camera/Handle;

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->releaseResources()V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 388
    invoke-super {p0, p1}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->handleMessage(Landroid/os/Message;)V

    .line 391
    :goto_0
    return-void

    .line 349
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->enter(I)Z

    goto :goto_0

    .line 353
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->exit(I)V

    goto :goto_0

    .line 357
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    goto :goto_0

    .line 361
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->onImageIDSelected(J)V

    goto :goto_0

    .line 365
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->onCaptureComplete()V

    goto :goto_0

    .line 369
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->deleteLatestMedia()V

    goto :goto_0

    .line 373
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 374
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/camera/splitcapture/SplitPhotoController;->swipeImages(JJ)V

    goto :goto_0

    .line 378
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->deleteLatestMedia()V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_LastSaveImageTask:Lcom/htc/camera/io/SaveBitmapImageTask;

    iget-object v1, v1, Lcom/htc/camera/io/SaveBitmapImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->waitForSavingMedia(Lcom/htc/camera/CaptureHandle;)V

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->processFinalImage()V

    goto :goto_0

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_1
        0x271a -> :sswitch_3
        0x271b -> :sswitch_4
        0x271f -> :sswitch_5
        0x2724 -> :sswitch_6
        0x2729 -> :sswitch_7
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 411
    invoke-super {p0}, Lcom/htc/camera/splitcapture/ISplitPhotoController;->initializeOverride()V

    .line 414
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "DateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSAltitude"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSAltitudeRef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSDateStamp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSLatitude"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSLatitudeRef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSLongitude"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSLongitudeRef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSProcessingMethod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "GPSTimeStamp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "Make"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "Model"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_SelectedExifTags:Ljava/util/Set;

    const-string v1, "Orientation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 432
    new-instance v0, Lcom/htc/camera/splitcapture/a;

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/splitcapture/a;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FirstImageResolutionProvider:Lcom/htc/camera/splitcapture/a;

    .line 433
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 434
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - Cannot find ICaptureResolutionManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void

    .line 441
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoController$2;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 454
    sget-object v0, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVE_FAILED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/splitcapture/SplitPhotoController$3;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    goto :goto_0
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 825
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 915
    :goto_0
    return v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 831
    iput-boolean v7, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_IsPostViewReceived:Z

    .line 834
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_1

    .line 836
    const-string v0, "save_mirror"

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Find directory and file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 843
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 844
    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-static {v1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 854
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 865
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 866
    invoke-direct {p0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->lockPhotoResolution()V

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 875
    :goto_2
    :try_start_0
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoController$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoController$4;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/splitcapture/SplitPhotoController$5;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoController$5;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V

    new-instance v3, Lcom/htc/camera/splitcapture/SplitPhotoController$6;

    invoke-direct {v3, p0, p1}, Lcom/htc/camera/splitcapture/SplitPhotoController$6;-><init>(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    const/16 v2, 0x2722

    iget-object v5, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object v0, p0

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 915
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Fail to get directory or file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iput-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 861
    iput-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    goto :goto_1

    .line 872
    :cond_4
    iput-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    .line 902
    :catch_0
    move-exception v0

    .line 904
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_5

    .line 906
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 907
    iput-object v6, p0, Lcom/htc/camera/splitcapture/SplitPhotoController;->m_JpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 909
    :cond_5
    throw v0
.end method
