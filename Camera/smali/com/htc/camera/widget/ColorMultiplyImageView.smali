.class public Lcom/htc/camera/widget/ColorMultiplyImageView;
.super Landroid/widget/ImageView;
.source "ColorMultiplyImageView.java"


# instance fields
.field private m_ApplyColorMultiplication:Z

.field private m_Color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p1}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/ColorMultiplyImageView;->m_Color:I

    .line 26
    return-void
.end method

.method static synthetic access$001(Lcom/htc/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public final applyColorMultiplication(Z)V
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/camera/widget/ColorMultiplyImageView;->m_ApplyColorMultiplication:Z

    .line 34
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->invalidate()V

    .line 35
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-boolean v0, p0, Lcom/htc/camera/widget/ColorMultiplyImageView;->m_ApplyColorMultiplication:Z

    if-nez v0, :cond_0

    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/widget/ColorMultiplyImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/widget/ColorMultiplyImageView$1;-><init>(Lcom/htc/camera/widget/ColorMultiplyImageView;Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/htc/camera/widget/ColorMultiplyImageView;->m_Color:I

    invoke-static {v1, p1, v0, v2, v3}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public setMultiplyColor(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/camera/widget/ColorMultiplyImageView;->m_Color:I

    .line 65
    return-void
.end method
