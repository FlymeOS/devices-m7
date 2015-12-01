.class final Lcom/htc/camera/widget/ReviewAnimationThread;
.super Lcom/htc/camera/WorkerThread;
.source "ReviewAnimationThread.java"


# static fields
.field private static final BASE_DURATION:I


# instance fields
.field private m_AnimationStartTime:J

.field private m_CurrentCenterPoint:Landroid/graphics/Point;

.field private m_CurrentImageBounds:Landroid/graphics/Rect;

.field private m_Duration:I

.field private m_Image:Landroid/graphics/Bitmap;

.field private m_InitialImageBounds:Landroid/graphics/Rect;

.field private m_IsAnimating:Z

.field private m_OffsetCoeff:D

.field private m_ScaleCoeff:D

.field private final m_SurfaceHeight:I

.field private final m_SurfaceHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SurfaceWidth:I

.field private m_TargetCenterPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x1f4

    sput v0, Lcom/htc/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;IIII)V
    .locals 2

    .prologue
    .line 64
    const-string v0, "Review Animation Thread"

    invoke-direct {p0, v0}, Lcom/htc/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    .line 44
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    .line 45
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_ScaleCoeff:D

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    .line 65
    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHolder:Ljava/lang/ref/WeakReference;

    .line 67
    iput p2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    .line 68
    iput p3, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    .line 69
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 70
    return-void
.end method

.method private animate()V
    .locals 13

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_AnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iget v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Duration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 85
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    .line 91
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->draw()V

    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 104
    iget v4, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 105
    iget-object v6, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    sub-double/2addr v6, v2

    .line 106
    iget-object v8, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_TargetCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-double v8, v8

    sub-double/2addr v8, v4

    .line 107
    iget-object v10, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget-wide v11, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v6, v11

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v10, Landroid/graphics/Point;->x:I

    .line 108
    iget-object v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget-wide v6, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_OffsetCoeff:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double v3, v4, v6

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 111
    iget-object v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 113
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_ScaleCoeff:D

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    .line 114
    iget-object v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    .line 115
    iget-object v3, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    .line 116
    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 117
    iget-object v3, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 118
    iget-object v4, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v0, v3

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->draw()V

    .line 125
    invoke-virtual {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private draw()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 134
    if-eqz v0, :cond_0

    .line 136
    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 140
    invoke-direct {p0, v2}, Lcom/htc/camera/widget/ReviewAnimationThread;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz v2, :cond_0

    .line 149
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 152
    :cond_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->TAG:Ljava/lang/String;

    const-string v4, "Cannot draw surface"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 148
    :cond_1
    throw v1
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 159
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    iget-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 165
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private setReviewImageInternal(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    .line 218
    if-eqz p1, :cond_0

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    iget v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchBounds(Landroid/graphics/Rect;Lcom/htc/camera/imaging/Size;Z)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    .line 229
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->draw()V

    .line 230
    return-void
.end method

.method private startReviewAnimationInternal(D)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 243
    iget-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 250
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 251
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 252
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 253
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    .line 259
    :cond_2
    iput-boolean v6, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    .line 260
    sget v0, Lcom/htc/camera/widget/ReviewAnimationThread;->BASE_DURATION:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Duration:I

    .line 261
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentCenterPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_SurfaceHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 262
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_InitialImageBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_CurrentImageBounds:Landroid/graphics/Rect;

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_AnimationStartTime:J

    .line 266
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->animate()V

    goto :goto_0
.end method

.method private stopReviewAnimationInternal()V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_IsAnimating:Z

    .line 287
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ReviewAnimationThread;->m_Image:Landroid/graphics/Bitmap;

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 191
    :goto_0
    return-void

    .line 176
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->animate()V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/widget/ReviewAnimationThread;->startReviewAnimationInternal(D)V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    goto :goto_0

    .line 185
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ReviewAnimationThread;->setReviewImageInternal(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->stopReviewAnimationInternal()V

    .line 200
    invoke-super {p0}, Lcom/htc/camera/WorkerThread;->onExit()V

    .line 201
    return-void
.end method

.method public setReviewImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/ReviewAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method
