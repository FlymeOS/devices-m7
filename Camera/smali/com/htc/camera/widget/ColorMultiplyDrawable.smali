.class public Lcom/htc/camera/widget/ColorMultiplyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorMultiplyDrawable.java"


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_baseDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_Context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ColorMultiplyDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ColorMultiplyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 26
    iget-object v1, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_Context:Landroid/content/Context;

    new-instance v2, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/widget/ColorMultiplyDrawable$1;-><init>(Lcom/htc/camera/widget/ColorMultiplyDrawable;Landroid/graphics/Canvas;)V

    invoke-static {v1, p1, v0, v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/camera/widget/ColorMultiplyDrawable;->m_baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 59
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
    .line 68
    return-void
.end method
