.class public final Lcom/htc/camera/photopattern/PhotoBoothController2;
.super Lcom/htc/camera/photopattern/IPhotoBoothController;
.source "PhotoBoothController2.java"

# interfaces
.implements Lcom/htc/camera/k;
.implements Lcom/htc/camera/m;
.implements Lcom/htc/camera/z;


# static fields
.field private static m_LatestContentUri:Landroid/net/Uri;


# instance fields
.field private TAG:Ljava/lang/String;

.field private combinCanvas:Landroid/graphics/Canvas;

.field private volatile imageLibhandle:I

.field private isNeedToResetBitmap:Z

.field private isPostViewCallbackReceived:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPostviewCallback:Lcom/htc/camera/k;

.field private mShutterSoundHandle:Lcom/htc/camera/Handle;

.field private mThumbnailBitmapHeight:I

.field private mThumbnailBitmapWidth:I

.field private m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

.field private final m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

.field private m_DecodeBitmap:Landroid/graphics/Bitmap;

.field private m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

.field private final m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_JpegIndex:I

.field private m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

.field private final m_NeedSaveEachImage:Z

.field private m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

.field private m_PostViewBitmap:Landroid/graphics/Bitmap;

.field private m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_ShutterIndex:I

.field private final m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_TakePictureIndex:I

.field private m_ThumbnailBitmap:Landroid/graphics/Bitmap;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private m_retrySaveImage:I

.field private m_scaleOpt:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 315
    const-string v0, "PhotoBooth Controller"

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/htc/camera/photopattern/IPhotoBoothController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 118
    const-string v0, "PhotoBoothController2"

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    .line 121
    iput v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    .line 122
    iput v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    .line 123
    iput v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    .line 139
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Unavailable:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    .line 144
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_NeedSaveEachImage:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    .line 160
    iput v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    .line 161
    iput-boolean v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    .line 162
    iput-boolean v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z

    .line 276
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2$1;-><init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 284
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2$2;-><init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 292
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2$3;-><init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 301
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2$4;-><init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mPostviewCallback:Lcom/htc/camera/k;

    .line 316
    return-void
.end method

.method static synthetic access$002(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 77
    sput-object p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_LatestContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/htc/camera/photopattern/PhotoBoothController2;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/photopattern/PhotoBoothController2;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->restoreResolutionProvider(I)V

    return-void
.end method

.method private attachImageInternal([BII)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v2, 0x66

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 686
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImageInternal() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    if-nez p1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 695
    :cond_0
    if-nez p2, :cond_1

    .line 697
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->combinCanvas:Landroid/graphics/Canvas;

    .line 698
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->haveBackgroundFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getBackgroundFrame()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 703
    invoke-virtual {v0, p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 704
    if-eqz v1, :cond_2

    .line 705
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position - L:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , R:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , T:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , B:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_2
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_scaleOpt:Landroid/graphics/BitmapFactory$Options;

    if-nez v3, :cond_3

    .line 709
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_scaleOpt:Landroid/graphics/BitmapFactory$Options;

    .line 712
    :cond_3
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {v3}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->getNumofSupportedResolution()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 714
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_scaleOpt:Landroid/graphics/BitmapFactory$Options;

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 723
    :goto_1
    array-length v3, p1

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_scaleOpt:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v7, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    .line 725
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    .line 728
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "DecodeByteArray fail, stop Capture!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 721
    :cond_4
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_scaleOpt:Landroid/graphics/BitmapFactory$Options;

    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 732
    :cond_5
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 734
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 736
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    :cond_6
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 740
    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoResolution()Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 741
    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v0, Lcom/htc/camera/imaging/Size;->height:I

    if-eq v4, v5, :cond_8

    .line 743
    :cond_7
    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    .line 744
    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x0

    .line 745
    iget v6, v0, Lcom/htc/camera/imaging/Size;->width:I

    add-int/2addr v6, v4

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 750
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->combinCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v3, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 751
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 752
    iput-object v9, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    .line 753
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImageInternal() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v7, v7, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2
.end method

.method private createPostviewImage([BLandroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1374
    .line 1378
    :try_start_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1379
    const/4 v1, 0x1

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1380
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1385
    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 1386
    invoke-virtual {p3}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v1, v2, v1

    int-to-double v3, v1

    .line 1389
    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v2, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    .line 1396
    :goto_0
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1398
    add-int/lit8 v1, v1, -0x1

    .line 1401
    const/4 v2, 0x0

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1402
    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1405
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1406
    :try_start_1
    invoke-direct {p0, v2, p3}, Lcom/htc/camera/photopattern/PhotoBoothController2;->createReviewImage(Landroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1416
    if-eqz v2, :cond_0

    .line 1420
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 1411
    :cond_0
    :goto_1
    return-object v0

    .line 1393
    :cond_1
    :try_start_3
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v3, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/2addr v2, v3

    int-to-double v3, v2

    .line 1394
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v1, v2, v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-double v1, v1

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1410
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v4, "createReviewImage() - Cannot create review image"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1416
    if-eqz v2, :cond_0

    .line 1420
    :try_start_5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1423
    :catch_1
    move-exception v1

    .line 1425
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1416
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    .line 1420
    :try_start_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 1416
    :cond_2
    :goto_5
    throw v0

    .line 1423
    :catch_2
    move-exception v1

    .line 1425
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1423
    :catch_3
    move-exception v1

    .line 1425
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    goto :goto_3

    .line 1416
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1408
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private createReviewImage(Landroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "createReviewImage() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    :try_start_0
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 1444
    if-eqz p1, :cond_1

    .line 1447
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1449
    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 1450
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 1459
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1461
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1463
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toScreenRatio is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1468
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1470
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "createReviewImage() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 1486
    :goto_1
    return-object p1

    .line 1455
    :cond_0
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double v2, v1, v3

    .line 1456
    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v0, v4

    goto :goto_0

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "createReviewImage() - dstBitmap is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1478
    :catch_0
    move-exception v0

    .line 1480
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "createReviewImage() - Cannot create review image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1483
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private finalizeStitcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1539
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "finalizeStitcher!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1541
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1543
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1545
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeBitmap:Landroid/graphics/Bitmap;

    .line 1546
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1547
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1548
    :cond_1
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 1549
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1551
    :cond_2
    iput-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    .line 1553
    return-void
.end method

.method private getExifHandle([BLcom/htc/camera/CaptureHandle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1052
    .line 1057
    :try_start_0
    const-string v0, ".camera_temp"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1058
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1059
    :try_start_2
    invoke-virtual {v6, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1062
    invoke-static {}, Lcom/htc/imagelib/ImageLib;->sInstance()Lcom/htc/imagelib/ImageLib;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/imagelib/ImageLib;->modifyExifDataBegin(Ljava/lang/String;)I

    move-result v0

    .line 1063
    const/16 v2, 0x6e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1071
    invoke-static {v6}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1073
    if-eqz v7, :cond_0

    .line 1074
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1067
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v4, "Cannot extract EXIF from first frame"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1071
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1073
    if-eqz v2, :cond_0

    .line 1074
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    :goto_2
    invoke-static {v6}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1073
    if-eqz v7, :cond_1

    .line 1074
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1071
    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_2

    .line 1065
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_1
.end method

.method private getStitchedResult()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 864
    .line 867
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 877
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 880
    iput-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " the length of stitched jpeg data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/16 v2, 0x6a

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 885
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v4, "getImage() - Cannot write to output stream"

    invoke-static {v2, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 476
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method private onCancelCapture()V
    .locals 6

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 1231
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1235
    :cond_0
    const/4 v4, 0x4

    .line 1236
    const/16 v2, 0x66

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1240
    :goto_0
    return-void

    .line 1239
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelCapture  not Capturing - CaptureState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onEnterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 506
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v2, 0x7f070005

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 515
    :cond_0
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    .line 516
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 517
    if-eqz v0, :cond_4

    .line 520
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 521
    const/4 v1, 0x3

    .line 522
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 523
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - Resolution provider changed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 535
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->getMaxResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getColums()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    .line 536
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->getMaxResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getRows()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    .line 537
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailBitmap W="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",H="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    iget v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 540
    :cond_2
    return-void

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - Cannot change resolution provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitPhotoBoothMode(I)V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->finalizeStitcher()V

    .line 556
    invoke-direct {p0, p1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->restoreResolutionProvider(I)V

    .line 559
    return-void
.end method

.method private onImageAttached(ZII)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 764
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAttached() - start :("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v2}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 770
    iput-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 775
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/4 v2, 0x6

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 780
    :goto_0
    monitor-enter p0

    .line 783
    if-eqz p1, :cond_1

    .line 785
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v4

    .line 793
    :cond_1
    if-nez p1, :cond_7

    .line 797
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    if-ne v0, v1, :cond_3

    .line 799
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    if-eq p2, v0, :cond_5

    .line 801
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 802
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    :goto_1
    return-void

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify onIntermediateJpeg"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    if-ne v0, v1, :cond_8

    .line 809
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    .line 811
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    if-eq p2, v0, :cond_5

    .line 813
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() Stopping - Waiting for pending pictures"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    monitor-exit p0

    goto :goto_1

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 820
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - cancel taking picture - ignore jpeg call back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iput p2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    .line 831
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 840
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, " get photobooth image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stitching:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 842
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 844
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_6

    .line 845
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Get stitched image"

    const-wide/16 v2, 0x7530

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 846
    :cond_6
    const/16 v0, 0x69

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 853
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    .line 859
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 860
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onImageAttached() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 827
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    monitor-exit p0

    goto/16 :goto_1

    .line 851
    :cond_9
    const/16 v2, 0x6a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    if-eq v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    goto :goto_0
.end method

.method private onPictureTaken(I[BLcom/htc/camera/CameraController;I)V
    .locals 8

    .prologue
    .line 922
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "JPEG call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 924
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v6

    .line 926
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    if-ne v0, v1, :cond_4

    .line 928
    const/4 v0, 0x1

    .line 933
    :goto_0
    if-eqz v0, :cond_5

    .line 935
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_7

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v0, 0x0

    move v7, v0

    .line 946
    :goto_1
    if-eqz v7, :cond_d

    .line 949
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    if-nez v0, :cond_8

    .line 951
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 961
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, p2, v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->createPostviewImage([BLandroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 962
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->bitmapFlipX(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 963
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 964
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 965
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 966
    const/16 v0, 0x6b

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 975
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "attach image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_c

    .line 980
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 981
    if-eqz v0, :cond_b

    .line 985
    iget-object v1, v6, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 987
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    .line 988
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    .line 1017
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attach image["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1021
    :cond_2
    iput p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    .line 1024
    const/16 v2, 0x65

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1047
    :goto_4
    if-nez p1, :cond_3

    if-eqz v7, :cond_3

    .line 1048
    const/16 v0, 0x6d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 1049
    :cond_3
    return-void

    .line 931
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 941
    :cond_5
    if-eqz p2, :cond_6

    array-length v1, p2

    if-nez v1, :cond_7

    .line 942
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v7, v0

    goto/16 :goto_1

    .line 969
    :cond_8
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getNumofPhotos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_9

    .line 970
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->startPreview()Z

    .line 971
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken - preview started - start animation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    goto/16 :goto_2

    .line 992
    :cond_a
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    .line 993
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    goto/16 :goto_3

    .line 998
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1003
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1028
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - isCapturing is false."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    .line 1030
    const/16 v2, 0x66

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private onShutter(I)V
    .locals 4

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 679
    :cond_0
    return-void
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1146
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1148
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1149
    const/16 v2, 0x6a

    const-wide/16 v6, 0xc8

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1150
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    .line 1158
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStitchCompleted retry saving file :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    goto :goto_0
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1161
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iput v7, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_retrySaveImage:I

    .line 1164
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - Invalid capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void

    .line 1171
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1172
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStitchCompleted() - jpegData is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    if-eqz p2, :cond_3

    .line 1175
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    if-eq v0, v8, :cond_2

    .line 1176
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    iget v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    iget-object v6, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/photopattern/PhotoBoothPattern;[BILcom/htc/camera/rotate/UIRotation;)V

    .line 1177
    sget-object v2, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iput-object v2, v0, Lcom/htc/camera/photopattern/PhotoBoothController2$SavePhotoBoothImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 1178
    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1179
    iput v8, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    .line 1191
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1194
    iput-object v9, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1195
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0x8

    move-object v0, p0

    move v3, v7

    move v4, v7

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1196
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Ready:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 1200
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->createReviewImage(Landroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1203
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    if-eqz v0, :cond_4

    .line 1204
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xd

    move-object v0, p0

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1214
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    if-eqz v0, :cond_5

    .line 1215
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xb

    move-object v0, p0

    move v3, v7

    move v4, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1220
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted - Saving tempFile Error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1187
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "onStitchCompleted() - No JPEG data"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_1

    .line 1207
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to send review image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    if-eqz v5, :cond_1

    .line 1209
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 1217
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify STITCH_COMPLETED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private resetBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1309
    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 1311
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1312
    const/4 p1, 0x0

    move-object v0, p1

    .line 1314
    :goto_0
    if-nez v0, :cond_0

    .line 1316
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1318
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private restoreResolutionProvider(I)V
    .locals 3

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1520
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 1521
    if-eqz v0, :cond_2

    .line 1523
    const/4 v1, 0x2

    .line 1524
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    .line 1525
    const/4 v1, 0x0

    .line 1526
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 1527
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "restoreResolutionProvider() - Resolution provider restored"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 1533
    :cond_1
    return-void

    .line 1530
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "restoreResolutionProvider() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scaleToFitScreenSize(Landroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1323
    if-eqz p1, :cond_0

    .line 1327
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 1329
    int-to-double v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 1330
    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double v6, v4, v6

    .line 1332
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1334
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1336
    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toScreenRatio is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "------------"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1341
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1344
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "createReviewImage() - end"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1365
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    .line 1366
    return-void
.end method

.method private setExiftHandle(ILcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-ne v0, p2, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "MSG_GOT_EXIFDATAHANDLE - setExiftHandle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iput p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->imageLibhandle:I

    .line 413
    :cond_0
    return-void
.end method

.method private startPreview()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1079
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v2, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Start preview"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v1, v2, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Cannot start preview"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Stopping:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 1091
    :cond_0
    :goto_0
    return v0

    .line 1088
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private takeNextPicture(I)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1101
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    monitor-exit v8

    move v0, v7

    .line 1137
    :goto_0
    return v0

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 1112
    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    move-object v1, v0

    .line 1118
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v2, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1119
    iget-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    if-eqz v0, :cond_1

    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mPostviewCallback:Lcom/htc/camera/k;

    invoke-virtual {v0, p0, v2, v3, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 1125
    iput p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    const/4 v0, 0x1

    :try_start_2
    monitor-exit v8

    goto :goto_0

    .line 1138
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    .line 1115
    goto :goto_1

    .line 1127
    :catch_0
    move-exception v0

    .line 1129
    :try_start_3
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeNextPicture() - Cannot take picture ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1130
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    .line 1135
    :cond_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1491
    if-nez p1, :cond_0

    .line 1510
    :goto_0
    return v0

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v1, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle is not equal , handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v2, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    if-eq v1, v2, :cond_2

    .line 1503
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onCancelCapture()V

    .line 1510
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public convertYUVtoBitmap([BII)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1352
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1353
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1354
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1355
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1356
    array-length v1, v0

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v7, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->deinitializeOverride()V

    .line 326
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 345
    invoke-super {p0, p1}, Lcom/htc/camera/photopattern/IPhotoBoothController;->handleAsyncMessage(Landroid/os/Message;)V

    .line 348
    :goto_0
    return-void

    .line 338
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getStitchedResult()V

    goto :goto_0

    .line 341
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 342
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [B

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getExifHandle([BLcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 403
    invoke-super {p0, p1}, Lcom/htc/camera/photopattern/IPhotoBoothController;->handleMessage(Landroid/os/Message;)V

    .line 406
    :goto_0
    return-void

    .line 361
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 362
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 363
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 364
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2;->attachImageInternal([BII)V

    goto :goto_0

    .line 368
    :sswitch_1
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V

    goto :goto_0

    .line 371
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onEnterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V

    goto :goto_0

    .line 375
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onExitPhotoBoothMode(I)V

    goto :goto_0

    .line 379
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onCancelCapture()V

    goto :goto_0

    .line 383
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 384
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 385
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 386
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onImageAttached(ZII)V

    goto :goto_0

    .line 390
    :sswitch_6
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TakePictureIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->takeNextPicture(I)Z

    goto :goto_0

    .line 393
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCurrentPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V

    goto :goto_0

    .line 396
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->startPreview()Z

    goto :goto_0

    .line 399
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 400
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setExiftHandle(ILcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x65 -> :sswitch_0
        0x66 -> :sswitch_5
        0x6a -> :sswitch_1
        0x6b -> :sswitch_8
        0x6e -> :sswitch_9
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->initializeOverride()V

    .line 450
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 451
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 452
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 453
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 456
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 457
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/photopattern/PhotoBoothController2$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/photopattern/PhotoBoothController2$5;-><init>(Lcom/htc/camera/photopattern/PhotoBoothController2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 469
    return-void
.end method

.method link(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v1, :cond_1

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    .line 497
    :cond_1
    return-void
.end method

.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 898
    :cond_0
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    iget v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    if-gt v0, v1, :cond_1

    .line 900
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onJpegCallbackTimeout(I)V

    .line 919
    :goto_0
    return-void

    .line 906
    :cond_1
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$6;->$SwitchMap$com$htc$camera$photopattern$PhotoBoothController2$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 912
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 918
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostviewCallback([B)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x6b

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1247
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureState:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    sget-object v1, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "CaptureState is not Capturing - ignore postViewCallback!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    if-nez p1, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "--- onPostviewCallback() - yuvData is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v7, v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 1305
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_1
    iput-boolean v6, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPostViewCallbackReceived:Z

    .line 1261
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 1262
    if-nez v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - No preview size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0xf

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1266
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p0, v7, v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 1270
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    iget v2, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/camera/photopattern/PhotoBoothController2;->resetBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    .line 1271
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

    if-nez v1, :cond_3

    .line 1273
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

    .line 1275
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap_decode:Landroid/graphics/Bitmap;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 1276
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_DecodeOption:Landroid/graphics/BitmapFactory$Options;

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1278
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothController2;->convertYUVtoBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1281
    iget v2, v0, Lcom/htc/camera/imaging/Size;->width:I

    sget-object v3, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v3, v3, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1282
    iget v3, v0, Lcom/htc/camera/imaging/Size;->height:I

    sget-object v4, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v4, v4, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1283
    if-gtz v2, :cond_4

    if-lez v3, :cond_5

    .line 1285
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->scaleToFitScreenSize(Landroid/graphics/Bitmap;Lcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/camera/photopattern/PhotoBoothController2;->resetBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    .line 1292
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostviewCallback - m_PostViewBitmap  W :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", H :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1294
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1295
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1296
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1297
    invoke-virtual {v1, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 1290
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget-boolean v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/htc/camera/photopattern/PhotoBoothController2;->resetBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PostViewBitmap:Landroid/graphics/Bitmap;

    move-object v0, v1

    goto :goto_2
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->onShutter(I)V

    .line 669
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ShutterIndex:I

    .line 670
    return-void
.end method

.method public setCurrentPattern(Lcom/htc/camera/photopattern/PhotoBoothPattern;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 417
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 420
    iput-boolean v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isNeedToResetBitmap:Z

    .line 421
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->restoreResolutionProvider(I)V

    .line 425
    :cond_0
    new-instance v0, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getPhotoSizeMode()Lcom/htc/camera/PhotoSizeMode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/PhotoSizeMode;)V

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    .line 426
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 427
    if-eqz v0, :cond_1

    .line 433
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPhotoBoothMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 11

    .prologue
    const/16 v10, 0x9

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 586
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture ++"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    :goto_0
    return v8

    .line 592
    :cond_0
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    if-nez v0, :cond_6

    .line 594
    invoke-virtual {p0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 597
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 600
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 602
    sget-object v0, Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;->Capturing:Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->setCaptureState(Lcom/htc/camera/photopattern/PhotoBoothController2$CaptureState;)V

    .line 606
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 607
    if-eqz v0, :cond_1

    .line 610
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ResolutionProvider:Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothResolutionProvider;->getNumofSupportedResolution()I

    move-result v1

    if-ne v1, v7, :cond_7

    move v2, v7

    .line 612
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->setPhotoResolution(IILcom/htc/camera/rotate/UIRotation;Z)V

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " resolution.getWidth() is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", resolution.getHeight is() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    iget v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchWidth()I

    move-result v4

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchHeight()I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapWidth:I

    iget v2, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mThumbnailBitmapHeight:I

    mul-int/2addr v2, v1

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v1}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchHeight()I

    move-result v1

    mul-int/2addr v1, v3

    if-ge v2, v1, :cond_4

    .line 617
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    :cond_2
    iput-object v9, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 620
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchWidth()I

    move-result v1

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 630
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 633
    iput-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->mPostviewCallback:Lcom/htc/camera/k;

    invoke-virtual {p2, p0, v0, v1, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 641
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    .line 660
    goto/16 :goto_0

    .line 624
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconfigure ************** resolution.getWidth() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resolution.getHeight is() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchWidth()I

    move-result v2

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothPattern;->getStitchHeight()I

    move-result v0

    iget-object v3, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    goto :goto_2

    .line 643
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 645
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_5

    .line 647
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 648
    iput-object v9, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegTimeoutTimerHandle:Lcom/htc/camera/Handle;

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {p0, v0, v10}, Lcom/htc/camera/photopattern/PhotoBoothController2;->removeMessages(Lcom/htc/camera/component/Component;I)V

    .line 651
    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_PhotoBoothUI:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/16 v2, 0x8

    move-object v0, p0

    move v3, v8

    move v4, v8

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 652
    throw v6

    .line 658
    :cond_6
    iget v0, p0, Lcom/htc/camera/photopattern/PhotoBoothController2;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/photopattern/PhotoBoothController2;->takeNextPicture(I)Z

    move-result v8

    goto/16 :goto_0

    :cond_7
    move v2, v8

    goto/16 :goto_1
.end method
