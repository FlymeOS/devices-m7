.class public Lcom/htc/camera/widget/SeekBarBaseDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SeekBarBaseDrawable.java"


# instance fields
.field private m_Level:I

.field private m_LinePaint:Landroid/graphics/Paint;

.field private m_LineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xb9

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    iput v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_Level:I

    .line 19
    iput v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LineWidth:I

    .line 29
    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LineWidth:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LinePaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LinePaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v0, 0xea

    .line 39
    invoke-virtual {p0}, Lcom/htc/camera/widget/SeekBarBaseDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 40
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 41
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    const-wide/16 v0, 0x0

    .line 44
    iget v2, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_Level:I

    if-lez v2, :cond_1

    .line 45
    iget v0, v9, Landroid/graphics/Rect;->right:I

    iget v1, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_Level:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    move-wide v6, v0

    .line 48
    :goto_0
    const/4 v0, 0x1

    move v8, v0

    :goto_1
    iget v0, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_Level:I

    if-ge v8, v0, :cond_0

    .line 49
    int-to-double v0, v8

    mul-double/2addr v0, v6

    double-to-int v0, v0

    .line 50
    iget v1, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, v9, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_LinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 52
    :cond_0
    return-void

    :cond_1
    move-wide v6, v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setLevels(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/camera/widget/SeekBarBaseDrawable;->m_Level:I

    .line 75
    return-void
.end method
