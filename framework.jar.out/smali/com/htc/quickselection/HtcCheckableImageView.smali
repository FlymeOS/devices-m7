.class public Lcom/htc/quickselection/HtcCheckableImageView;
.super Landroid/widget/CheckedTextView;
.source "HtcCheckableImageView.java"


# static fields
.field private static final ANIMATION_STYLE:I = 0x2

.field private static final NO_ANIMATION:I = 0x2

.field private static final SCREEN_ANIMATION:I = 0x1


# instance fields
.field private final animDuration:I

.field private forceMultiply:Z

.field private internalForceMultiply:Z

.field private mScreenPaint:Landroid/graphics/Paint;

.field private multiplyPaint:Landroid/graphics/Paint;

.field private scaleDownAnimator:Landroid/animation/ObjectAnimator;

.field private scaleUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/quickselection/HtcCheckableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    .line 143
    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 153
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->animDuration:I

    .line 154
    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 155
    iput-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->scaleDownAnimator:Landroid/animation/ObjectAnimator;

    .line 220
    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    .line 221
    iput-boolean v2, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    invoke-direct {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->setupAnimationEnv()V

    .line 66
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->initPadding()V

    .line 68
    return-void
.end method

.method private setInternalMultiplyForceEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-eq v0, p1, :cond_0

    .line 228
    iput-boolean p1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    .line 229
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->invalidate()V

    .line 231
    :cond_0
    return-void
.end method

.method private setupAnimationEnv()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    .line 214
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/quickselection/HtcCheckableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method initPadding()V
    .locals 7

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x30a0127

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 133
    .local v0, "M6":I
    div-int/lit8 v2, v0, 0x2

    .line 134
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingTop()I

    move-result v4

    .line 135
    .local v4, "top":I
    div-int/lit8 v3, v0, 0x2

    .line 136
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getPaddingBottom()I

    move-result v1

    .line 137
    .local v1, "bottom":I
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setPadding(IIII)V

    .line 138
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->internalForceMultiply:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->forceMultiply:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 238
    const/4 v7, 0x0

    .line 240
    .local v7, "canvasCount":I
    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/quickselection/HtcCheckableImageView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v7

    .line 241
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 246
    .end local v7    # "canvasCount":I
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 297
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 287
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    .line 290
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/htc/quickselection/HtcCheckableImageView;->setInternalMultiplyForceEnabled(Z)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setCategoryColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/quickselection/HtcCheckableImageView;->multiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    :cond_0
    return-void
.end method

.method protected setViewScale(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleX(F)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/htc/quickselection/HtcCheckableImageView;->setScaleY(F)V

    .line 150
    return-void
.end method
