.class public Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;
.super Landroid/view/View;
.source "SoundVerticalSeekBar.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private m_Background:Landroid/graphics/drawable/Drawable;

.field private m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_CurrentTouch:Landroid/graphics/PointF;

.field private m_ExtendAreaBound:Landroid/graphics/RectF;

.field private m_ExtendAreaLength:I

.field private m_Gravity:I

.field private m_IndicatorAreaBound:Landroid/graphics/RectF;

.field private m_IndicatorDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private m_IndicatorMargin:I

.field private m_IndicatorTextDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/widget/ShadowTextDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private m_IndicatorTextSize:I

.field private m_IsInitUI:Z

.field private m_IsLightOn:Z

.field private m_IsLightOnEnabled:Z

.field private m_IsTouchDownInSwitchArea:Z

.field private m_Max:I

.field private m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

.field private m_Orientation:I

.field private m_Progress:I

.field private m_Rotation:I

.field private m_ScrollAreaBound:Landroid/graphics/RectF;

.field private m_SeekBarData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;"
        }
    .end annotation
.end field

.field private m_SwitchAreaBound:Landroid/graphics/RectF;

.field private m_SwitchAreaLength:I

.field private m_Thumb:Landroid/graphics/drawable/Drawable;

.field private m_ThumbAreaBound:Landroid/graphics/RectF;

.field private m_TouchOffset:F

.field private m_TouchOffsetThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f090289

    .line 94
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 95
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TEXT_COLOR:I

    .line 97
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    sput v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TEXT_SIZE:F

    .line 98
    invoke-static {v3}, Lcom/htc/camera/ViewUtil;->getTypefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    .line 99
    return-void

    .line 95
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    .line 50
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Gravity:I

    .line 57
    iput v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ExtendAreaLength:I

    .line 58
    iput v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaLength:I

    .line 61
    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOnEnabled:Z

    .line 65
    iput v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    .line 66
    iput v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    .line 84
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    .line 111
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 112
    return-void
.end method

.method private applyTouchOffset()V
    .locals 4

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 502
    :cond_0
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getPositionFromProgress()F
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 529
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 534
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    return v0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 538
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-eqz v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string v0, "SoundVerticalSeekBar"

    const-string v1, "initUI()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iput-boolean v7, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    .line 546
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->resetBounds()V

    .line 549
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateIndicatorBounds()V

    .line 551
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;

    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->setRotation(I)V

    .line 553
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    invoke-direct {p0, v0, v6, v6, v7}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(IZZZ)V

    .line 556
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Gravity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    if-ne v0, v7, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 563
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 564
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getHeight()I

    move-result v2

    .line 565
    iget-object v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 567
    const-string v3, "SoundVerticalSeekBar"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "initUI() - Gravity:center, background:("

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x2

    const-string v5, ","

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, ","

    aput-object v5, v4, v0

    const/4 v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, ","

    aput-object v1, v4, v0

    const/4 v0, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, ")"

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method private notifyProgressChanged()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    invoke-interface {v0, p0, v1}, Lcom/htc/camera/manualcapture/e;->onProgressChanged(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;I)V

    .line 216
    :cond_0
    return-void
.end method

.method private notifyStartTracking()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    invoke-interface {v0, p0}, Lcom/htc/camera/manualcapture/e;->onStartTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V

    .line 226
    :cond_0
    return-void
.end method

.method private notifyStopTracking()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    invoke-interface {v0, p0}, Lcom/htc/camera/manualcapture/e;->onStopTrackingTouch(Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;)V

    .line 221
    :cond_0
    return-void
.end method

.method private resetBounds()V
    .locals 9

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 249
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 251
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaLength:I

    if-ne v0, v5, :cond_0

    div-float v0, v3, v4

    .line 252
    :goto_0
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ExtendAreaLength:I

    if-ne v1, v5, :cond_1

    div-float v1, v3, v4

    .line 253
    :goto_1
    iget-object v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    .line 255
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v7, v7, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaBound:Landroid/graphics/RectF;

    .line 256
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v3, v1

    invoke-direct {v5, v7, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ExtendAreaBound:Landroid/graphics/RectF;

    .line 257
    new-instance v5, Landroid/graphics/RectF;

    sub-float v1, v3, v1

    invoke-direct {v5, v7, v0, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ScrollAreaBound:Landroid/graphics/RectF;

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    div-float v1, v2, v8

    div-float v3, v4, v8

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ScrollAreaBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v8

    div-float/2addr v4, v8

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ScrollAreaBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    .line 259
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ScrollAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorMargin:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ScrollAreaBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    .line 260
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaLength:I

    int-to-float v0, v0

    goto :goto_0

    .line 252
    :cond_1
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ExtendAreaLength:I

    int-to-float v1, v1

    goto :goto_1
.end method

.method private resetTouchOffset()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    .line 524
    return-void
.end method

.method private setProgress(IZZZ)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 442
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    if-ne p1, v0, :cond_0

    if-nez p4, :cond_0

    .line 481
    :goto_0
    return-void

    .line 453
    :cond_0
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    if-le p1, v0, :cond_4

    .line 454
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    .line 455
    :goto_1
    if-ge v0, v1, :cond_1

    move v0, v1

    .line 459
    :cond_1
    iget-boolean v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOnEnabled:Z

    if-nez v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 460
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    .line 463
    :cond_2
    if-eqz p2, :cond_3

    .line 477
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgressInternal(I)V

    .line 480
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateThumbBoundsFromProgress()V

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method private setProgressInternal(I)V
    .locals 1

    .prologue
    .line 487
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    .line 488
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLightOn(Z)V

    .line 491
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->notifyProgressChanged()V

    .line 492
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIndicatorBounds()V
    .locals 21

    .prologue
    .line 614
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v1, :cond_1

    .line 683
    :cond_0
    return-void

    .line 618
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-int/lit8 v2, v8, -0x1

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 620
    const/4 v10, 0x0

    .line 621
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 622
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SeekBarData:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SeekBarData:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SeekBarData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v3

    .line 626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SeekBarData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/manualcapture/MModeData;

    invoke-virtual {v1}, Lcom/htc/camera/manualcapture/MModeData;->getValue()Lcom/htc/camera/Rational;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v1

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-wide/from16 v4, v19

    move-wide/from16 v2, v17

    .line 628
    :goto_0
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v8, :cond_3

    .line 631
    if-nez v10, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v7

    mul-float/2addr v6, v9

    sub-float/2addr v1, v6

    move v6, v1

    .line 638
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v11, v1

    .line 639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 642
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    sub-float v11, v13, v11

    float-to-int v11, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v1, v13

    sub-float v13, v6, v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v1, v15

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v12, v11, v13, v14, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 645
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    sparse-switch v1, :sswitch_data_0

    .line 655
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v1, v12}, Lcom/htc/camera/widget/ShadowTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 628
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 635
    :cond_2
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v13, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v15, v1

    sub-double v11, v4, v11

    mul-double/2addr v11, v15

    sub-double v15, v4, v2

    div-double/2addr v11, v15

    add-double/2addr v11, v13

    double-to-float v1, v11

    move v6, v1

    goto :goto_2

    .line 649
    :sswitch_0
    iget v1, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 650
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int/2addr v1, v6

    .line 651
    const/4 v6, 0x0

    invoke-virtual {v12, v1, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 659
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-int/lit8 v2, v3, -0x1

    int-to-float v2, v2

    div-float v4, v1, v2

    .line 661
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v2

    mul-float/2addr v5, v4

    sub-float v5, v1, v5

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v6, v1

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 668
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float v6, v8, v6

    float-to-int v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    sub-float v8, v5, v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorAreaBound:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-direct {v7, v6, v8, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 671
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    sparse-switch v1, :sswitch_data_1

    .line 681
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 661
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 675
    :sswitch_1
    iget v1, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    .line 676
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v1, v5

    .line 677
    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_4
    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    move-wide/from16 v4, v19

    move-wide/from16 v2, v17

    goto/16 :goto_0

    .line 645
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch

    .line 671
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private updateLightOnAndOff()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 597
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 599
    iput-boolean v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsTouchDownInSwitchArea:Z

    .line 601
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOnEnabled:Z

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0, v4}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLightOn(Z)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsTouchDownInSwitchArea:Z

    .line 608
    invoke-virtual {p0, v3}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLightOn(Z)V

    goto :goto_0
.end method

.method private updateProgressFromTouch()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 686
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsTouchDownInSwitchArea:Z

    if-eqz v0, :cond_2

    .line 691
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    if-eq v0, v1, :cond_0

    .line 693
    invoke-direct {p0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgressInternal(I)V

    goto :goto_0

    .line 699
    :cond_2
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 704
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 705
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 706
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 707
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 708
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 709
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    .line 710
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 711
    :cond_4
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v2, v0

    .line 713
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 714
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateThumbBoundsFromProgress()V
    .locals 6

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v0, :cond_0

    .line 815
    :goto_0
    return-void

    .line 774
    :cond_0
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 776
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLightOn(Z)V

    goto :goto_0

    .line 781
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getPositionFromProgress()F

    move-result v0

    .line 786
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    packed-switch v1, :pswitch_data_0

    .line 814
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->invalidate()V

    goto :goto_0

    .line 790
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 791
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    .line 792
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 795
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 796
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    .line 797
    iget-object v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 798
    iget-object v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 793
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 794
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateThumbBoundsFromTouch()V
    .locals 6

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsTouchDownInSwitchArea:Z

    if-nez v0, :cond_0

    .line 737
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    packed-switch v0, :pswitch_data_0

    .line 766
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->invalidate()V

    goto :goto_0

    .line 741
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 742
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 743
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 746
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 747
    float-to-int v0, v0

    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 748
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 749
    iget-object v3, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 750
    iget-object v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 744
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 745
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ThumbAreaBound:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTouchOffset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 818
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-nez v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 823
    iput v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    goto :goto_0

    .line 828
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getPositionFromProgress()F

    move-result v0

    .line 829
    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Orientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 833
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 834
    sub-float v0, v1, v0

    iput v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    .line 835
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffsetThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 836
    iput v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffset:F

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 127
    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 128
    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 130
    iget v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 131
    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 140
    iget v4, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    int-to-float v4, v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    neg-int v0, v0

    int-to-float v0, v0

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    :cond_3
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Progress:I

    return v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final isLightOn()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 204
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 206
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->initUI()V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return v3

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_CurrentTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 170
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->applyTouchOffset()V

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateTouchOffset()V

    .line 176
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->applyTouchOffset()V

    .line 177
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->notifyStartTracking()V

    .line 179
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateLightOnAndOff()V

    .line 180
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateProgressFromTouch()V

    .line 181
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateThumbBoundsFromTouch()V

    goto :goto_0

    .line 187
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateProgressFromTouch()V

    .line 188
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateThumbBoundsFromTouch()V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->resetTouchOffset()V

    .line 194
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateThumbBoundsFromProgress()V

    .line 195
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->notifyStopTracking()V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setExtendAreaLength(I)V
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_ExtendAreaLength:I

    .line 292
    return-void
.end method

.method public setIndicatorAreaMargin(I)V
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorMargin:I

    .line 366
    return-void
.end method

.method public setIndicatorDrawables(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    if-nez p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 338
    iget-object v2, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorDrawables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateIndicatorBounds()V

    goto :goto_0
.end method

.method public setIndicatorTextSize(I)V
    .locals 0

    .prologue
    .line 369
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextSize:I

    .line 370
    return-void
.end method

.method public setIndicatorValues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 353
    new-instance v3, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v3, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    sget v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {v3, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextSize(F)V

    .line 355
    sget v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TEXT_COLOR:I

    invoke-virtual {v3, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setColor(I)V

    .line 356
    sget-object v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 357
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 360
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateIndicatorBounds()V

    goto :goto_0
.end method

.method public setLightOn(Z)V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    if-eq v0, p1, :cond_0

    .line 304
    iput-boolean p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    .line 306
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;

    iget-boolean v1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOn:Z

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->setLightOn(Z)V

    .line 312
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->invalidate()V

    .line 315
    :cond_0
    return-void
.end method

.method public setLightOnEnabled(Z)V
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOnEnabled:Z

    if-ne p1, v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iput-boolean p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsLightOnEnabled:Z

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    if-ne p1, v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Max:I

    goto :goto_0
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_OnSeekBarChangeListener:Lcom/htc/camera/manualcapture/e;

    .line 426
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(IZZ)V

    .line 430
    return-void
.end method

.method public setProgress(IZ)V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(IZZ)V

    .line 434
    return-void
.end method

.method public setProgress(IZZ)V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(IZZZ)V

    .line 438
    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .prologue
    .line 385
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Rotation:I

    .line 387
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Background:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->setRotation(I)V

    .line 391
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateIndicatorBounds()V

    .line 393
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->invalidate()V

    .line 395
    :cond_0
    return-void
.end method

.method public setSeekBarData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/manualcapture/MModeData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/MModeData;

    .line 406
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->isIndicator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 410
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 411
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    .line 413
    new-instance v4, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v4, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    .line 414
    iget v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextSize:I

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextSize(F)V

    .line 415
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IndicatorTextDrawables:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 418
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_IsInitUI:Z

    if-eqz v0, :cond_4

    .line 419
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->updateIndicatorBounds()V

    .line 421
    :cond_4
    iput-object p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SeekBarData:Ljava/util/List;

    goto :goto_0
.end method

.method public setSwitchAreaLenth(I)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_SwitchAreaLength:I

    .line 296
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_Thumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->m_TouchOffsetThreshold:F

    goto :goto_0
.end method
