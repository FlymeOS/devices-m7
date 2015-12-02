.class public Lcom/htc/camera/mainbar/EffectMenuIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EffectMenuIconDrawable.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IndicatorMarginBottom:I

.field private m_IndicatorMarginLeft:I

.field private m_IsIndicatorImageViewVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_Context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginLeft:I

    .line 27
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a03df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginBottom:I

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 34
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IsIndicatorImageViewVisible:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 39
    iget-object v2, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginLeft:I

    sub-int v2, v0, v2

    iget v5, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginBottom:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginLeft:I

    add-int/2addr v1, v5

    iget v5, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorMarginBottom:I

    sub-int/2addr v0, v5

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 44
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_EffectMenuIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public setIndicatorImageVisibility(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/htc/camera/mainbar/EffectMenuIconDrawable;->m_IsIndicatorImageViewVisible:Z

    .line 66
    return-void
.end method
