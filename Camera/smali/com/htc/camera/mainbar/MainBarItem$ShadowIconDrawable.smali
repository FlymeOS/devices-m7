.class public abstract Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MainBarItem.java"


# instance fields
.field protected mBlurValue:F

.field protected m_Icon:Landroid/graphics/Bitmap;

.field protected m_Opts:Landroid/graphics/BitmapFactory$Options;

.field protected m_Paint:Landroid/graphics/Paint;

.field protected m_Res:Landroid/content/res/Resources;

.field protected m_xOffset:I

.field protected m_yOffset:I

.field final synthetic this$0:Lcom/htc/camera/mainbar/MainBarItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/MainBarItem;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 100
    iput-object p1, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->this$0:Lcom/htc/camera/mainbar/MainBarItem;

    .line 101
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 91
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->mBlurValue:F

    .line 102
    iput-object p2, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Res:Landroid/content/res/Resources;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Paint:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    .line 105
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Opts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_xOffset:I

    .line 107
    iput v2, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_yOffset:I

    .line 108
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    :cond_0
    return-void
.end method

.method protected drawShadowOnIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 115
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 117
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 122
    const/high16 v4, 0x7f000000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->mBlurValue:F

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 129
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 130
    iget v4, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_xOffset:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_yOffset:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem$ShadowIconDrawable;->m_Icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
