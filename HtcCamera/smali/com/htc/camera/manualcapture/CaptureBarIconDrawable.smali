.class public Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CaptureBarIconDrawable.java"


# instance fields
.field private m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

.field private m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 32
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_TextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/manualcapture/CaptureBarIconDrawable;->m_BitmapDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
