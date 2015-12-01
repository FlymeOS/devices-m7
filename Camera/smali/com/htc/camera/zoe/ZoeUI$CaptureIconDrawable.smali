.class final Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ZoeUI.java"


# instance fields
.field private final m_BaseDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_Context:Landroid/content/Context;

.field private final m_ProgressColor:I

.field public percentage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 203
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_Context:Landroid/content/Context;

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    const v1, 0x7f0f00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_ProgressColor:I

    .line 206
    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 217
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 222
    iget v1, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->percentage:I

    if-lez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->percentage:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 226
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 227
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 228
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_Context:Landroid/content/Context;

    new-instance v1, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable$1;-><init>(Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;Landroid/graphics/Canvas;)V

    iget v3, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_ProgressColor:I

    invoke-static {v0, p1, v2, v1, v3}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;I)V

    .line 237
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$CaptureIconDrawable;->m_BaseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method
