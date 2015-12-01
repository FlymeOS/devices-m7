.class public Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CaptureBarIndicatorDrawable.java"


# instance fields
.field private m_IconDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IconOffsetLeft:I

.field private m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

.field private m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

.field private m_TextOffsetLeft:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput p3, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_TextOffsetLeft:I

    .line 23
    iput p2, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconOffsetLeft:I

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 45
    :cond_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public setShutter(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 78
    const-string p1, ""

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-direct {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 82
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v2

    const v3, 0x7f09028a

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 89
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 90
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 91
    iget-object v4, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v4}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 92
    sub-int v5, v2, v0

    iget v6, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_TextOffsetLeft:I

    add-int/2addr v5, v6

    .line 93
    add-int v6, v5, v0

    .line 94
    if-le v4, v3, :cond_3

    move v0, v1

    .line 95
    :goto_0
    iget v7, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconOffsetLeft:I

    add-int/2addr v7, v2

    .line 96
    if-le v4, v3, :cond_2

    sub-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    add-int/2addr v4, v0

    invoke-virtual {v8, v5, v0, v6, v4}, Lcom/htc/camera/widget/ShadowTextDrawable;->setBounds(IIII)V

    .line 98
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v7

    add-int/2addr v3, v1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    return-void

    .line 94
    :cond_3
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setShutterDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 106
    iput-object p1, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 110
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 111
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 112
    iget-object v4, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 113
    sub-int v5, v2, v0

    iget v6, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconOffsetLeft:I

    add-int/2addr v5, v6

    .line 114
    add-int v6, v5, v0

    .line 115
    if-le v4, v3, :cond_2

    move v0, v1

    .line 116
    :goto_1
    iget v7, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconOffsetLeft:I

    add-int/2addr v7, v2

    .line 117
    if-le v4, v3, :cond_1

    sub-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 118
    :cond_1
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_ShutterSpeedIconDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v0

    invoke-virtual {v8, v5, v0, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CaptureBarIndicatorDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v7

    add-int/2addr v3, v1

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 115
    :cond_2
    sub-int v0, v3, v4

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method
