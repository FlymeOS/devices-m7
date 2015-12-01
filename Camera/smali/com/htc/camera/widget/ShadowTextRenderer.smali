.class public Lcom/htc/camera/widget/ShadowTextRenderer;
.super Ljava/lang/Object;
.source "ShadowTextRenderer.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private m_HasStroke:Z

.field private m_MaximumSize:Lcom/htc/camera/imaging/Size;

.field private m_MeasuredTextBounds:Landroid/graphics/Rect;

.field private final m_StrokePaint:Landroid/graphics/Paint;

.field private m_Text:Ljava/lang/String;

.field private final m_TextPaint:Landroid/graphics/Paint;

.field private m_UserTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f0902aa

    .line 41
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 42
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_COLOR:I

    .line 46
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    sput v0, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_SIZE:F

    .line 47
    invoke-static {v3}, Lcom/htc/camera/ViewUtil;->getTypefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    .line 48
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_HasStroke:Z

    .line 28
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0, v2, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MaximumSize:Lcom/htc/camera/imaging/Size;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    .line 33
    sget v0, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    .line 56
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, -0x74000000

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 63
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x48000000    # 131072.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    sget v1, Lcom/htc/camera/widget/ShadowTextRenderer;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/camera/widget/ShadowTextRenderer;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measure()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 117
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    iget v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->measure(F)V

    goto :goto_0
.end method

.method private measure(F)V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 128
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MaximumSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    if-ltz v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MaximumSize:Lcom/htc/camera/imaging/Size;

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    if-le v0, v1, :cond_0

    .line 130
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 131
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 132
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->measure(F)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Canvas could not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 86
    if-eqz v3, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/htc/camera/widget/ShadowTextRenderer;->measure()V

    .line 91
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    .line 92
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 93
    iget-boolean v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_HasStroke:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBounds(Lcom/htc/camera/imaging/Size;)V
    .locals 1

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/widget/ShadowTextRenderer;->measure()V

    .line 105
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    .line 106
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    return-void
.end method

.method public setMaximumSize(II)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MaximumSize:Lcom/htc/camera/imaging/Size;

    iput p1, v0, Lcom/htc/camera/imaging/Size;->width:I

    .line 151
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MaximumSize:Lcom/htc/camera/imaging/Size;

    iput p2, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 153
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_Text:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 181
    return-void

    :cond_0
    move-object v0, v1

    .line 179
    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 190
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    .line 193
    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 197
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-static {p2}, Lcom/htc/camera/ViewUtil;->getTypefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 203
    iget-object v2, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    :goto_0
    if-eqz v0, :cond_2

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 208
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    .line 188
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
        0x1010096
    .end array-data
.end method

.method public setTextSize(F)V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 217
    iput p1, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_UserTextSize:F

    .line 218
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 222
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_TextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 230
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextRenderer;->m_MeasuredTextBounds:Landroid/graphics/Rect;

    .line 232
    return-void
.end method
