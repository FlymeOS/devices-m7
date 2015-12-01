.class public Lcom/htc/camera/manualcapture/ToggleSeekBarButton;
.super Landroid/widget/RelativeLayout;
.source "ToggleSeekBarButton.java"


# instance fields
.field private final m_BlurFilter:Landroid/graphics/BlurMaskFilter;

.field protected m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ButtonContentMarginLeft:I

.field private m_ButtonContentMarginTop:I

.field private m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

.field protected m_ButtonContentTextSize:I

.field protected m_ButtonContentTextUnitSize:I

.field private m_ButtonContentUnitTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

.field protected m_ButtonContentView:Landroid/view/View;

.field private final m_ButtonHeight:I

.field protected m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ButtonIndicatorMarginLeft:I

.field private m_ButtonIndicatorMarginTop:I

.field private m_ButtonIndicatorTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

.field protected m_ButtonIndicatorView:Landroid/view/View;

.field protected m_ButtonView:Landroid/view/View;

.field protected m_ButtonViewContainer:Landroid/widget/RelativeLayout;

.field private final m_ButtonWidth:I

.field protected m_CircleSeekBarDrawable:Landroid/graphics/drawable/Drawable;

.field protected m_CircleSeekBarThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected m_Context:Lcom/htc/camera/HTCCamera;

.field private m_IsSeekBarExpanded:Z

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_RotationDegree:I

.field protected m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

.field private m_SeekBarAnchor:Landroid/graphics/Rect;

.field private final m_ShadowPaint:Landroid/graphics/Paint;

.field private m_StrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    const v5, 0x7f0a0466

    const/16 v7, 0xc

    const/4 v4, -0x1

    const/4 v12, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Paint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ShadowPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_BlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 82
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    .line 85
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextSize:I

    .line 86
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextUnitSize:I

    .line 90
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0478

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_StrokeWidth:I

    .line 91
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_StrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ShadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_BlurFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 99
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0470

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0471

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 102
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    invoke-direct {v3, v0, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBarAnchor:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    .line 107
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    .line 108
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    iget v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$1;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$1;-><init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    new-instance v1, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$2;-><init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    new-instance v0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$3;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$3;-><init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorMarginLeft:I

    .line 145
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorMarginTop:I

    .line 146
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$4;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton$4;-><init>(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentMarginLeft:I

    .line 161
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentMarginTop:I

    .line 162
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v0, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    .line 183
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0475

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 184
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0476

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 185
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0477

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 186
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0473

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0472

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 188
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0479

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 189
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a047a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 190
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a047b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 191
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a047c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 192
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {v1, v12, v12, v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    new-instance v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    iget v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    iget v7, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_StrokeWidth:I

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;-><init>(Landroid/content/Context;IIIIII)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_CircleSeekBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_CircleSeekBarThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_CircleSeekBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_CircleSeekBarThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v8}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setExtendAreaLength(I)V

    .line 203
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v9}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setSwitchAreaLenth(I)V

    .line 204
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v10}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setIndicatorAreaMargin(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v11}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setIndicatorTextSize(I)V

    .line 207
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v12, v12, v12, v12}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setPadding(IIII)V

    .line 208
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->addView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->addView(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->drawOnButton(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->toggleSeekBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->drawOnIndicator(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/manualcapture/ToggleSeekBarButton;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->drawOnContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawOnButton(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 240
    const-string v0, "ToggleSeekBarButton"

    const-string v1, "drawOnButton() - rotation:"

    iget v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method private drawOnContent(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 296
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentUnitTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentUnitTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawOnIndicator(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private refreshButton()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 324
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 325
    return-void
.end method

.method private toggleSeekBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 540
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_IsSeekBarExpanded:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setVisibility(I)V

    .line 544
    iput-boolean v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_IsSeekBarExpanded:Z

    .line 545
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->refreshButton()V

    .line 554
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setVisibility(I)V

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_IsSeekBarExpanded:Z

    .line 552
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->refreshButton()V

    goto :goto_0
.end method

.method private updateButtonContentTextDrawableBound()V
    .locals 6

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v2

    .line 631
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 632
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentMarginLeft:I

    .line 633
    iget v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentMarginTop:I

    .line 634
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    sparse-switch v4, :sswitch_data_0

    .line 649
    :goto_1
    iget-object v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {v5, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcom/htc/camera/widget/ShadowTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 651
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->refreshButton()V

    goto :goto_0

    .line 637
    :sswitch_0
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    .line 638
    goto :goto_1

    .line 640
    :sswitch_1
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    sub-int v1, v4, v1

    sub-int/2addr v1, v2

    .line 641
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    .line 642
    goto :goto_1

    .line 644
    :sswitch_2
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    .line 645
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    goto :goto_1

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private updateButtonIndicatorDrawableBound()V
    .locals 6

    .prologue
    .line 598
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 602
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 603
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorMarginLeft:I

    .line 604
    iget v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorMarginTop:I

    .line 605
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    sparse-switch v4, :sswitch_data_0

    .line 620
    :goto_1
    iget-object v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    invoke-direct {v5, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 622
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->refreshButton()V

    goto :goto_0

    .line 608
    :sswitch_0
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    .line 609
    goto :goto_1

    .line 611
    :sswitch_1
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    sub-int v1, v4, v1

    sub-int/2addr v1, v2

    .line 612
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    .line 613
    goto :goto_1

    .line 615
    :sswitch_2
    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    .line 616
    iget v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    goto :goto_1

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_IsSeekBarExpanded:Z

    if-eqz v0, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->toggleSeekBar()V

    .line 560
    :cond_0
    return-void
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_IsSeekBarExpanded:Z

    if-nez v0, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->toggleSeekBar()V

    .line 566
    :cond_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->getThumbBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public rotate(I)V
    .locals 2

    .prologue
    .line 332
    iput p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    .line 335
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 336
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 337
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    iget v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_RotationDegree:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setRotation(I)V

    .line 339
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->updateButtonIndicatorDrawableBound()V

    .line 340
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->updateButtonContentTextDrawableBound()V

    .line 341
    return-void
.end method

.method public setButtonContentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 388
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 394
    iget v2, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 395
    iget v3, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 396
    iget-object v4, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->refreshButton()V

    .line 401
    return-void
.end method

.method public setButtonContentText(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-direct {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextSize(F)V

    .line 415
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->updateButtonContentTextDrawableBound()V

    .line 416
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setButtonIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->updateButtonIndicatorDrawableBound()V

    .line 359
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e99999a    # 0.3f

    .line 461
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setEnabled(Z)V

    .line 471
    if-eqz p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 475
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 476
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setAlpha(F)V

    .line 485
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 481
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 482
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_ButtonContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 483
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setMax(I)V

    .line 493
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setOnSeekBarChangeListener(Lcom/htc/camera/manualcapture/e;)V

    .line 349
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setProgress(I)V

    .line 501
    return-void
.end method

.method public setSeekBarData(Ljava/util/List;)V
    .locals 1
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
    .line 524
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setSeekBarData(Ljava/util/List;)V

    .line 525
    return-void
.end method

.method public setSeekBarLightOnEnabled(Z)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setLightOnEnabled(Z)V

    .line 509
    return-void
.end method

.method public setSeekBarMarker(Ljava/util/List;)V
    .locals 1
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
    .line 516
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setIndicatorValues(Ljava/util/List;)V

    .line 517
    return-void
.end method

.method public setSeekBarMarkerDrawable(Ljava/util/List;)V
    .locals 1
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
    .line 532
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ToggleSeekBarButton;->m_SeekBar:Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/htc/camera/manualcapture/SoundVerticalSeekBar;->setIndicatorDrawables(Ljava/util/List;)V

    .line 533
    return-void
.end method
