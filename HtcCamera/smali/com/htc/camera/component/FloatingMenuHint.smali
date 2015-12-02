.class final Lcom/htc/camera/component/FloatingMenuHint;
.super Lcom/htc/camera/y;
.source "FloatingMenuHint.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private m_Anchor:Landroid/graphics/Rect;

.field private m_FloatingHint:Landroid/view/View;

.field private m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

.field private m_HintTextMargin:I

.field private m_IsSetupUI:Z

.field private m_ItemRotationInDegree:I

.field private m_MaximumTextWidth:I

.field private m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

.field private m_TextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f090288

    .line 51
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/camera/component/FloatingMenuHint;->DEFAULT_TEXT_COLOR:I

    .line 54
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    sput v0, Lcom/htc/camera/component/FloatingMenuHint;->DEFAULT_TEXT_SIZE:F

    .line 55
    invoke-static {v3}, Lcom/htc/camera/ViewUtil;->getTypefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/component/FloatingMenuHint;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    .line 56
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 62
    const-string v0, "Floating Menu Hint"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/y;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/camera/component/FloatingMenuHint;->disableMessageLogs()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/FloatingMenuHint;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/FloatingMenuHint;)Lcom/htc/camera/widget/ShadowTextRenderer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    return-object v0
.end method

.method private getBounds()Lcom/htc/camera/imaging/Size;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/htc/camera/imaging/Size;

    iget-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    return-object v0
.end method

.method private isShown()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 163
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 164
    return-void
.end method

.method private setBounds(II)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 172
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 173
    return-void
.end method

.method private setMaximumSize(II)V
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v1, "setMaximumSize() - width:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " height:"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/widget/ShadowTextRenderer;->setMaximumSize(II)V

    .line 196
    :cond_0
    return-void
.end method

.method private setPosition(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    return-void
.end method

.method private setRotation()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_ItemRotationInDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 186
    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v1, "setText() - text:"

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateBounds()V

    .line 213
    :cond_0
    return-void
.end method

.method private setTextSize(F)V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v1, "setTextSize() - size:"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTextSize(F)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 227
    :cond_0
    return-void
.end method

.method private setVisible(Z)V
    .locals 2

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 234
    iget-boolean v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/FloatingMenuHint;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 243
    new-instance v2, Lcom/htc/camera/component/FloatingMenuHint$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/component/FloatingMenuHint$1;-><init>(Lcom/htc/camera/component/FloatingMenuHint;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    .line 252
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 253
    iget-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    iget-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintLayout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_FloatingHint:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    new-instance v1, Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-direct {v1}, Lcom/htc/camera/widget/ShadowTextRenderer;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    .line 261
    iget-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    sget-object v2, Lcom/htc/camera/component/FloatingMenuHint;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTypeface(Landroid/graphics/Typeface;)V

    .line 264
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0454

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintTextMargin:I

    .line 265
    sget v0, Lcom/htc/camera/component/FloatingMenuHint;->DEFAULT_TEXT_SIZE:F

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextSize:I

    .line 266
    iget v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextSize:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/FloatingMenuHint;->setTextSize(F)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_IsSetupUI:Z

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 337
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v2, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 341
    iget-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 342
    if-nez v0, :cond_2

    .line 343
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v2, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 349
    :cond_0
    :goto_0
    iget v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    iget v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextSize:I

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 350
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/FloatingMenuHint;->setBounds(II)V

    .line 352
    :cond_1
    return-void

    .line 344
    :cond_2
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-lt v1, v2, :cond_3

    iget v1, v0, Lcom/htc/camera/imaging/Size;->height:I

    if-ge v1, v2, :cond_0

    .line 346
    :cond_3
    iput v2, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 347
    iput v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_0
.end method

.method private updateHintTextPosition()V
    .locals 7

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->getBounds()Lcom/htc/camera/imaging/Size;

    move-result-object v1

    .line 391
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, v1, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    .line 392
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintTextMargin:I

    sub-int/2addr v0, v3

    .line 394
    iget v3, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_ItemRotationInDegree:I

    sparse-switch v3, :sswitch_data_0

    .line 404
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v3, "updateHintTextPosition() - location:"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " , "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    invoke-direct {p0, v2, v0}, Lcom/htc/camera/component/FloatingMenuHint;->setPosition(II)V

    goto :goto_0

    .line 399
    :sswitch_0
    iget v3, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    iget v4, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_TextSize:I

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 394
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private updateMaximumSize()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 359
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 362
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_ItemRotationInDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 377
    invoke-direct {p0, v2, v2}, Lcom/htc/camera/component/FloatingMenuHint;->setMaximumSize(II)V

    goto :goto_0

    .line 367
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintTextMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_MaximumTextWidth:I

    .line 368
    iget v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_MaximumTextWidth:I

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/FloatingMenuHint;->setMaximumSize(II)V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_HintTextMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_MaximumTextWidth:I

    .line 373
    iget v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_MaximumTextWidth:I

    invoke-direct {p0, v0, v2}, Lcom/htc/camera/component/FloatingMenuHint;->setMaximumSize(II)V

    .line 374
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_Anchor.centerX():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public hideFloatingHint(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v1, "hideFloatingHint()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/FloatingMenuHint;->setVisible(Z)V

    .line 104
    return-void
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/camera/y;->initializeOverride()V

    .line 76
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->setupUI()V

    .line 77
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0, p2, p1}, Lcom/htc/camera/component/FloatingMenuHint;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 146
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/FloatingMenuHint;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 155
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    iget v1, p2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_ItemRotationInDegree:I

    .line 126
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateMaximumSize()V

    .line 129
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateBounds()V

    .line 130
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateHintTextPosition()V

    .line 131
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->setRotation()V

    .line 134
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->refresh()V

    .line 137
    :cond_0
    return-void
.end method

.method public showFloatingHint(Landroid/graphics/Rect;Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 308
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return-object v5

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "showFloatingHint() - anchor:"

    aput-object v3, v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "  text:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iput-object p1, p0, Lcom/htc/camera/component/FloatingMenuHint;->m_Anchor:Landroid/graphics/Rect;

    .line 315
    invoke-direct {p0, p2}, Lcom/htc/camera/component/FloatingMenuHint;->setText(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateMaximumSize()V

    .line 319
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateBounds()V

    .line 321
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateHintTextPosition()V

    .line 323
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->setRotation()V

    .line 325
    invoke-direct {p0, v4}, Lcom/htc/camera/component/FloatingMenuHint;->setVisible(Z)V

    .line 327
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->refresh()V

    goto :goto_0
.end method

.method public showFloatingHint(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/camera/component/FloatingMenuHint;->TAG:Ljava/lang/String;

    const-string v1, "showFloatingHint() - text:"

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FloatingMenuHint;->setText(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateMaximumSize()V

    .line 293
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateBounds()V

    .line 295
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->updateHintTextPosition()V

    .line 297
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->setRotation()V

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/FloatingMenuHint;->setVisible(Z)V

    .line 301
    invoke-direct {p0}, Lcom/htc/camera/component/FloatingMenuHint;->refresh()V

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method
