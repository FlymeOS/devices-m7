.class public Lcom/htc/camera/media/ThumbnailImagePool;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ThumbnailImagePool.java"

# interfaces
.implements Lcom/htc/camera/media/a;


# static fields
.field private static MAX_THUMB_IMAGE_HEIGHT:I

.field private static MAX_THUMB_IMAGE_WIDTH:I

.field private static final m_ThumbnailImagePool:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static thumbDone:I

.field private static thumbUndone:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    sput-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    .line 79
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sput v0, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_WIDTH:I

    .line 80
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    sput v0, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_HEIGHT:I

    return-void
.end method

.method protected constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x1

    .line 88
    const-string v0, "Thumbnail Image Pool"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 94
    sget v0, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_WIDTH:I

    if-le v0, v2, :cond_0

    .line 96
    sput v2, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_WIDTH:I

    .line 97
    const/16 v0, 0x120

    sput v0, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_HEIGHT:I

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/media/ThumbnailImagePool$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/media/ThumbnailImagePool$1;-><init>(Lcom/htc/camera/media/ThumbnailImagePool;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 123
    return-void
.end method

.method static synthetic access$000()Lcom/htc/camera/s;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    return-object v0
.end method

.method static synthetic access$110()I
    .locals 2

    .prologue
    .line 27
    sget v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    return v0
.end method

.method private createThumbnailImageInterval(Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 303
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImageInterval() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_WIDTH:I

    .line 306
    sget v2, Lcom/htc/camera/media/ThumbnailImagePool;->MAX_THUMB_IMAGE_HEIGHT:I

    .line 308
    iget v0, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailType:I

    and-int/lit8 v0, v0, 0x2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    iget v0, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailType:I

    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 311
    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 312
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 314
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 315
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 341
    :cond_1
    :goto_0
    iget v4, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v6, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-le v4, v6, :cond_a

    .line 348
    :goto_1
    iget v4, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v6, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2, v1, v4, v6, v3}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchSize(IIIIZ)Lcom/htc/camera/imaging/Size;

    move-result-object v1

    .line 350
    const-string v2, "ThumbnailImagePool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createThumbnailImageInterval() - imageSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Target thumbSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/camera/imaging/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 355
    iget-object v0, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    iget v2, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    :goto_2
    if-eqz v0, :cond_2

    .line 361
    const-string v1, "ThumbnailImagePool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createThumbnailImageInterval() - thumbSize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " x "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    :cond_2
    iput-object v0, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailImageLarge:Landroid/graphics/Bitmap;

    .line 367
    iput-object v5, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 368
    iput-object v5, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    move v1, v3

    .line 370
    :goto_3
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 372
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0, v1}, Lcom/htc/camera/s;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 375
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/s;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImageInterval() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_3
    :goto_4
    return-void

    .line 316
    :cond_4
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    if-eqz v4, :cond_5

    .line 318
    iget-object v0, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 319
    const-string v4, "ThumbnailImagePool"

    const-string v6, "createThumbnailImageInterval() - check orientation"

    invoke-static {v4, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_5
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v4, :cond_1

    .line 324
    :try_start_0
    new-instance v4, Lcom/htc/camera/MediaDataRetriever;

    iget-object v6, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v6}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/htc/camera/MediaDataRetriever;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Lcom/htc/camera/MediaDataRetriever;->isPanoramaPlusImage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 327
    const-string v4, "ThumbnailImagePool"

    const-string v6, "createThumbnailImageInterval() - PanoramaPlus, return"

    invoke-static {v4, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 336
    :catch_0
    move-exception v4

    .line 338
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 330
    :cond_6
    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v6, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v6}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    iput-object v6, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    .line 332
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 333
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    invoke-virtual {v6, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 334
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 335
    iget-object v4, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-static {v4}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize(Lcom/htc/camera/io/Path;)Lcom/htc/camera/imaging/Size;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 357
    :cond_7
    iget-object v2, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    if-eqz v2, :cond_9

    .line 358
    iget-object v2, p1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailJpegRawData:[B

    invoke-static {v2, v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_2

    .line 370
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    move-object v0, v5

    goto/16 :goto_2

    :cond_a
    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1
.end method


# virtual methods
.method public createThumbnailImage(Landroid/graphics/Bitmap;I)Lcom/htc/camera/Handle;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 131
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (Bitmap) start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    const-string v1, "ThumbnailImagePool"

    const-wide/16 v3, 0x0

    move-object v5, p1

    move-object v6, v2

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;-><init>(Ljava/lang/String;Lcom/htc/camera/io/Path;JLandroid/graphics/Bitmap;[BI)V

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    if-ge v1, v8, :cond_4

    .line 139
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 140
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    .line 153
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    and-int/lit8 v1, p2, 0x2

    if-eq v1, v8, :cond_0

    and-int/lit8 v1, p2, 0x4

    if-ne v1, v9, :cond_1

    .line 156
    :cond_0
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/htc/camera/media/ThumbnailImagePool;->sendAsyncMessage(I)Z

    .line 157
    :cond_1
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    and-int/lit8 v1, p2, 0x4

    if-ne v1, v9, :cond_3

    .line 158
    :cond_2
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/htc/camera/media/ThumbnailImagePool;->sendAsyncMessage(I)Z

    .line 159
    :cond_3
    const-string v1, "ThumbnailImagePool"

    const-string v2, "createThumbnailImage() - (Bitmap) end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-object v0

    .line 143
    :cond_4
    :try_start_1
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 145
    iget-object v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-nez v3, :cond_5

    .line 147
    sget-object v2, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v2, v1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    .line 151
    :cond_6
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createThumbnailImage(Landroid/graphics/Bitmap;Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 169
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (Bitmap) not implemented"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public createThumbnailImage(Lcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 221
    const-string v0, "ThumbnailImagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailImage() - (filePath) start, filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    const-string v1, "ThumbnailImagePool"

    move-object v2, p1

    move-wide v3, p2

    move-object v6, v5

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;-><init>(Ljava/lang/String;Lcom/htc/camera/io/Path;JLandroid/graphics/Bitmap;[BI)V

    .line 224
    monitor-enter p0

    .line 226
    :try_start_0
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 228
    iget-object v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v3, p1}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->fileTime:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    .line 230
    const-string v0, "ThumbnailImagePool"

    const-string v2, "createThumbnailImage() - (filePath) thumbnail already exist"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    monitor-exit p0

    .line 255
    :goto_0
    return-object v1

    .line 235
    :cond_1
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 237
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 238
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    .line 250
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/htc/camera/media/ThumbnailImagePool;->sendAsyncMessage(I)Z

    .line 253
    const-string v1, "ThumbnailImagePool"

    const-string v2, "createThumbnailImage() - (filePath) end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 255
    goto :goto_0

    .line 240
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 242
    iget-object v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v3, :cond_3

    .line 244
    sget-object v2, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v2, v1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    .line 248
    :cond_4
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createThumbnailImage([BI)Lcom/htc/camera/Handle;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 179
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (jpegRawData) start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    const-string v1, "ThumbnailImagePool"

    const-wide/16 v3, 0x0

    move-object v5, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;-><init>(Ljava/lang/String;Lcom/htc/camera/io/Path;JLandroid/graphics/Bitmap;[BI)V

    .line 182
    monitor-enter p0

    .line 184
    :try_start_0
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 186
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 187
    sget v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    .line 199
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/htc/camera/media/ThumbnailImagePool;->sendAsyncMessage(I)Z

    .line 202
    const-string v1, "ThumbnailImagePool"

    const-string v2, "createThumbnailImage() - (jpegRawData) end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-object v0

    .line 189
    :cond_0
    :try_start_1
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 191
    iget-object v3, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-nez v3, :cond_1

    .line 193
    sget-object v2, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v2, v1}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createThumbnailImage([BLcom/htc/camera/io/Path;JI)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 212
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (jpegRawData) not implemented"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized createThumbnailImage(Lcom/htc/camera/Handle;Lcom/htc/camera/io/Path;J)V
    .locals 3

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (handle) start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 268
    sget v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    .line 281
    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 283
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0, v1}, Lcom/htc/camera/s;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 284
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 286
    iput-object p2, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 287
    iput-wide p3, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->fileTime:J

    .line 288
    sget-object v2, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/s;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    .line 290
    const-string v0, "ThumbnailImagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailImage() - (handle) thumbDone/Undone in list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/camera/media/ThumbnailImagePool;->thumbUndone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "ThumbnailImagePool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbnailImage() - (handle) success, filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "ThumbnailImagePool"

    const-string v1, "createThumbnailImage() - (handle) end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return-void

    .line 271
    :cond_2
    :try_start_1
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 273
    iget-object v2, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v2, :cond_3

    .line 275
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public getThumbnailImage(Lcom/htc/camera/io/Path;I)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    const-string v0, "ThumbnailImagePool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbnailImage() - start, filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 392
    iget-object v3, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v3, p1}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    iget-boolean v2, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbCreated:Z

    if-eqz v2, :cond_1

    .line 396
    const-string v1, "ThumbnailImagePool"

    const-string v2, "getThumbnailImage() - success"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbnailImageLarge:Landroid/graphics/Bitmap;

    .line 407
    :goto_0
    return-object v0

    .line 401
    :cond_1
    const-string v0, "ThumbnailImagePool"

    const-string v2, "getThumbnailImage() - thumbnail not yet created"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 402
    goto :goto_0

    .line 406
    :cond_2
    const-string v0, "ThumbnailImagePool"

    const-string v2, "getThumbnailImage() - thumbnail not found"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 407
    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 435
    invoke-super {p0, p1}, Lcom/htc/camera/component/ServiceCameraComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 419
    :pswitch_0
    const/4 v1, 0x0

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    sget-object v0, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 423
    iget-boolean v3, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbCreated:Z

    if-nez v3, :cond_1

    .line 426
    sget-object v1, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    sget-object v2, Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;

    invoke-virtual {v2, v0}, Lcom/htc/camera/s;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/s;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->thumbCreated:Z

    .line 430
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, v0}, Lcom/htc/camera/media/ThumbnailImagePool;->createThumbnailImageInterval(Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;)V

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 416
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
