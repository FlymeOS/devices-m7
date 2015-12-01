.class public Lcom/htc/camera/widget/SweepPanoramaThumbnailView;
.super Landroid/view/View;
.source "SweepPanoramaThumbnailView.java"


# instance fields
.field private final SPEED_THRESHOLD:I

.field private m_Background:Landroid/graphics/drawable/NinePatchDrawable;

.field private m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;

.field private m_BlueFrameCover:Landroid/graphics/drawable/NinePatchDrawable;

.field private final m_BlueRectPadding:I

.field private m_Callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_DashLineBitmap:Landroid/graphics/Bitmap;

.field private m_Handler:Landroid/os/Handler;

.field private final m_InnerPadding:I

.field private m_IsMovingTooFast:Z

.field private m_IsSpeedIndicatorMoving:Z

.field private m_IsSpeedIndicatorReachingEnd:Z

.field private m_IsThumbnailReachingEnd:Z

.field private m_MovingDirection:I

.field private m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

.field private m_Rotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_SingleFrameLength:I

.field private m_SpeedIndicatorCurrentPosition:I

.field private final m_SpeedIndicatorDashLength:I

.field private final m_SpeedIndicatorDashLengthGap:I

.field private m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

.field private m_SpeedIndicatorTargetPosition:I

.field private m_SpeedIndicatorWaringFramePen:Landroid/graphics/Paint;

.field private m_ThumbnailBitmap:Landroid/graphics/Bitmap;

.field private final m_WarningFrameColor:I

.field private final m_WarningRectColor:I

.field private m_WhiteFrame:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    .line 54
    iput v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    .line 85
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 88
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_InnerPadding:I

    .line 90
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    .line 92
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    .line 93
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLengthGap:I

    .line 95
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->SPEED_THRESHOLD:I

    .line 97
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 99
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    .line 100
    iget-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x4

    new-array v2, v2, [F

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    int-to-float v3, v3

    aput v3, v2, v4

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLengthGap:I

    int-to-float v3, v3

    aput v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLengthGap:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 107
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WarningRectColor:I

    .line 108
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WarningFrameColor:I

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorWaringFramePen:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorWaringFramePen:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WarningFrameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$1;-><init>(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)V

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Handler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->updateSpeedIndicatorCurrentPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method private getThumbnailHeight()I
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getThumbnailWidth()I
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private notifyCallbacks()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsThumbnailReachingEnd:Z

    .line 213
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Callbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/m;

    .line 217
    invoke-interface {v0}, Lcom/htc/camera/widget/m;->onLengthLimitReached()V

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method private onSpeedIndicatorTargetPositionUpdated()V
    .locals 3

    .prologue
    .line 405
    const-string v0, "SweepPanoramaThumbnailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpeedIndicatorTargetPositionUpdated() -  m_SpeedIndicatorTargetPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorMoving:Z

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->updateSpeedIndicatorCurrentPosition()V

    .line 409
    :cond_0
    return-void
.end method

.method private oneSidePadding()I
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_InnerPadding:I

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method private totalPadding()I
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_InnerPadding:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private updateSpeedIndicatorCurrentPosition()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x1

    .line 416
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    const-string v0, "SweepPanoramaThumbnailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpeedIndicatorCurrentPosition() - m_SpeedIndicatorCurrentPosition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    sub-int/2addr v0, v1

    .line 422
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 424
    const-string v0, "SweepPanoramaThumbnailView"

    const-string v1, "updateSpeedIndicatorCurrentPosition() -  stopping moving speed indicator"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorMoving:Z

    .line 428
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 429
    iput-boolean v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorReachingEnd:Z

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->invalidate()V

    .line 447
    :goto_0
    return-void

    .line 436
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorMoving:Z

    .line 437
    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    iget-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsMovingTooFast:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    .line 440
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    if-le v0, v1, :cond_2

    .line 441
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    .line 443
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->invalidate()V

    .line 446
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 437
    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method


# virtual methods
.method public addLengthLimitCallback(Lcom/htc/camera/widget/m;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Callbacks:Ljava/util/ArrayList;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v11, 0x40400000    # 3.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 233
    :cond_0
    const-string v0, "SweepPanoramaThumbnailView"

    const-string v1, "m_PanoramaObject or m_ThumbnailBitmap is null. Return."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Background:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Background:Landroid/graphics/drawable/NinePatchDrawable;

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Background:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    iget v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 246
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Background:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    iget v0, v0, Lcom/htc/camera/widget/PanoramaObject;->availableThumbnailLength:I

    .line 254
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 261
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    iget v0, v0, Lcom/htc/camera/widget/PanoramaObject;->clippingRectWidth:I

    int-to-double v3, v0

    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    iget v0, v0, Lcom/htc/camera/widget/PanoramaObject;->maxStitchedImageLength:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 262
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 264
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    if-nez v0, :cond_4

    .line 265
    iput v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    .line 267
    :cond_4
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    packed-switch v0, :pswitch_data_0

    .line 287
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v0

    if-lt v3, v0, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->notifyCallbacks()V

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WhiteFrame:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_6

    .line 294
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WhiteFrame:Landroid/graphics/drawable/NinePatchDrawable;

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WhiteFrame:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    iget v5, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 297
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WhiteFrame:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->SPEED_THRESHOLD:I

    add-int/2addr v0, v3

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_InnerPadding:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 301
    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    if-eq v2, v0, :cond_8

    .line 303
    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    .line 304
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    if-nez v0, :cond_7

    .line 305
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    .line 306
    :cond_7
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->onSpeedIndicatorTargetPositionUpdated()V

    .line 310
    :cond_8
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v0

    add-int/2addr v0, v3

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    if-le v0, v2, :cond_d

    iget-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsThumbnailReachingEnd:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsMovingTooFast:Z

    .line 313
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020137

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrameCover:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_a

    .line 320
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020138

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrameCover:Landroid/graphics/drawable/NinePatchDrawable;

    .line 324
    :cond_a
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    packed-switch v0, :pswitch_data_1

    .line 335
    const-string v0, "SweepPanoramaThumbnailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should not enter this state! Direction is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 340
    :goto_3
    iget-object v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrame:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v0, v2

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    iget-object v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrameCover:Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v5

    invoke-direct {v4, v2, v1, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 344
    iget-boolean v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsMovingTooFast:Z

    if-eqz v1, :cond_b

    .line 345
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    iget v5, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueRectPadding:I

    sub-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorWaringFramePen:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 349
    :cond_b
    iget-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_BlueFrameCover:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    sub-int v1, v0, v2

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 352
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    iget-object v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    new-instance v5, Landroid/graphics/RectF;

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v5, v10, v10, v0, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;

    invoke-direct {v6, p0, v3}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView$2;-><init>(Lcom/htc/camera/widget/SweepPanoramaThumbnailView;Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsMovingTooFast:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_WarningRectColor:I

    :goto_4
    invoke-static {v4, v3, v5, v6, v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;I)V

    .line 363
    int-to-float v0, v2

    invoke-virtual {p1, v1, v0, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 364
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    iget-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorReachingEnd:Z

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    .line 373
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    .line 374
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 375
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 376
    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 377
    iget-object v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    iget-object v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorLinePen:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 382
    :cond_c
    iget v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    packed-switch v0, :pswitch_data_2

    .line 392
    const-string v0, "SweepPanoramaThumbnailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should not enter this state! Direction is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v4

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v5

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v6

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v7

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    iget-object v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v2, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 278
    :pswitch_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v4

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v5

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v6

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v7

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    iget-object v4, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v2, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 310
    goto/16 :goto_2

    .line 327
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v0

    if-lt v3, v0, :cond_e

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v0

    .line 328
    :goto_5
    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    sub-int v2, v0, v2

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v3

    sub-int/2addr v2, v3

    .line 329
    goto/16 :goto_3

    .line 327
    :cond_e
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_5

    .line 331
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getThumbnailWidth()I

    move-result v0

    sub-int/2addr v0, v3

    if-gtz v0, :cond_f

    move v0, v1

    .line 332
    :goto_6
    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    add-int/2addr v2, v0

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v3

    add-int/2addr v2, v3

    move v12, v2

    move v2, v0

    move v0, v12

    .line 333
    goto/16 :goto_3

    .line 331
    :cond_f
    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->totalPadding()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_6

    .line 353
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_4

    .line 385
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v2

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 389
    :pswitch_5
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->oneSidePadding()I

    move-result v2

    iget v3, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorDashLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 324
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 382
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 178
    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    .line 179
    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 180
    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    .line 181
    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 182
    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SingleFrameLength:I

    .line 183
    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    .line 184
    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorCurrentPosition:I

    .line 185
    iput v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_SpeedIndicatorTargetPosition:I

    .line 186
    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorMoving:Z

    .line 187
    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsMovingTooFast:Z

    .line 188
    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsThumbnailReachingEnd:Z

    .line 189
    iput-boolean v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_IsSpeedIndicatorReachingEnd:Z

    .line 190
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    iput-object v1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_DashLineBitmap:Landroid/graphics/Bitmap;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method

.method public final setMovingDirection(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_MovingDirection:I

    .line 155
    return-void
.end method

.method public final setPanoramaObject(Lcom/htc/camera/widget/PanoramaObject;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_PanoramaObject:Lcom/htc/camera/widget/PanoramaObject;

    .line 147
    return-void
.end method

.method public final setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 133
    return-void
.end method

.method public final setUiRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/camera/widget/SweepPanoramaThumbnailView;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 140
    return-void
.end method
