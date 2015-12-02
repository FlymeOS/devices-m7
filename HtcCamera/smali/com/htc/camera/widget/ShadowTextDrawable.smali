.class public Lcom/htc/camera/widget/ShadowTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowTextDrawable.java"


# instance fields
.field private final m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

.field private final m_TextSize:Lcom/htc/camera/imaging/Size;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    new-instance v0, Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-direct {v0}, Lcom/htc/camera/widget/ShadowTextRenderer;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    .line 18
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    new-instance v0, Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-direct {v0}, Lcom/htc/camera/widget/ShadowTextRenderer;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    .line 18
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    .line 27
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    iget-object v2, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 41
    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v1}, Lcom/htc/camera/imaging/Size;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 46
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 47
    iget-object v2, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v1, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->draw(Landroid/graphics/Canvas;FF)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 57
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    iget-object v1, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_TextSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setColor(I)V

    .line 92
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTextSize(F)V

    .line 139
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/camera/widget/ShadowTextDrawable;->m_Renderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    return-void
.end method
