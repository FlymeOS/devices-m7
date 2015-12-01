.class final Lcom/htc/camera/component/WatchCompanionBroadcaster;
.super Lcom/htc/camera/component/CameraComponent;
.source "WatchCompanionBroadcaster.java"


# instance fields
.field private m_IsOpenIntentSent:Z

.field private m_LastContentUri:Landroid/net/Uri;

.field private volatile m_ThumbnailImageHeight:I

.field private volatile m_ThumbnailImageWidth:I


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "Watch-Companion Intent Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/imaging/Size;)[B
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->createThumbnailImage(Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/imaging/Size;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_IsOpenIntentSent:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/camera/component/WatchCompanionBroadcaster;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_IsOpenIntentSent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/camera/component/WatchCompanionBroadcaster;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private createThumbnailImage(Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/imaging/Size;)[B
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    sget-object v2, Lcom/htc/camera/io/FileFormat;->Unknown:Lcom/htc/camera/io/FileFormat;

    if-ne v1, v2, :cond_2

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - No file information"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    :goto_0
    return-object v0

    .line 70
    :cond_2
    if-nez p2, :cond_3

    .line 72
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - Cannot return thumbnail image size"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v1}, Lcom/htc/camera/media/MediaInfo;->isImage()Z

    move-result v1

    .line 83
    if-eqz v1, :cond_7

    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->getJpegData()[B

    move-result-object v2

    .line 86
    if-eqz v2, :cond_6

    .line 88
    invoke-static {v2}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/htc/camera/imaging/Size;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - Cannot get image size"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    iget v4, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageWidth:I

    int-to-double v4, v4

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 95
    iget v6, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageHeight:I

    int-to-double v6, v6

    iget v8, v3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 96
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 97
    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iput v6, p2, Lcom/htc/camera/imaging/Size;->width:I

    .line 98
    iget v6, v3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p2, Lcom/htc/camera/imaging/Size;->height:I

    .line 99
    invoke-static {v2}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v4

    .line 112
    iget-object v5, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v6, "createThumbnailImage() - Thumbnail image size is "

    invoke-static {v5, v6, p2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    if-eqz v1, :cond_9

    .line 117
    invoke-static {v2, v3, p2, v4}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BLcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 118
    :goto_1
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_8

    .line 124
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 129
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 132
    goto/16 :goto_0

    .line 103
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - No JPEG raw data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnailImage() - Unsupported media type"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object v1, v0

    goto :goto_1
.end method

.method private onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - "

    iget-object v2, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.TAKEN_MEDIA_SAVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 268
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 269
    const-string v2, "thumbnail-image"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 270
    const-string v2, "thumbnail-image-width"

    iget v3, p3, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v2, "thumbnail-image-height"

    iget v3, p3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-object v2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v3, "onMediaSaved() - Thumbnail image size is "

    invoke-static {v2, v3, p3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 275
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 287
    const-string v0, "com.htc.watch.companion"

    const-string v1, "com.htc.watch.companion.service.CameraStatusReceiver"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "com.htc.camera.permission.RECEIVE_STATE_CHANGE"

    invoke-virtual {v0, p1, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "sendBroadcast() - Fail to send broadcast"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 7

    .prologue
    const/16 v3, 0x12c

    const/4 v6, 0x1

    .line 142
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 145
    invoke-virtual {p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 147
    const-string v2, "watch-companion-thumb-width"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageWidth:I

    .line 148
    const-string v2, "watch-companion-thumb-height"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageHeight:I

    .line 149
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;

    const-string v2, "initializeOverride() - Request thumbnail image size is "

    iget v3, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, " x "

    iget v5, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_ThumbnailImageHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 168
    invoke-virtual {p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$5;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/WatchCompanionBroadcaster$5;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/WatchCompanionBroadcaster$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster$6;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 251
    return-void
.end method
