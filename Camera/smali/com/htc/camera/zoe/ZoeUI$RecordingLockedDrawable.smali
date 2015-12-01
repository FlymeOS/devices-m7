.class final Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ZoeUI.java"


# instance fields
.field private final m_IconDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    new-instance v0, Lcom/htc/camera/widget/ShadowTextRenderer;

    const v1, 0x7f0803ed

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    .line 291
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    const v1, 0x7f09028a

    invoke-virtual {v0, p1, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;->setTextAppearance(Landroid/content/Context;I)V

    .line 292
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 306
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 307
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    invoke-direct {v4, v3, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 308
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 309
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-direct {v1}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 313
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v2, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 314
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v2, p1, v0, v1}, Lcom/htc/camera/widget/ShadowTextRenderer;->draw(Landroid/graphics/Canvas;FF)V

    .line 315
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 340
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-direct {v0}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_TextRenderer:Lcom/htc/camera/widget/ShadowTextRenderer;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ShadowTextRenderer;->getBounds(Lcom/htc/camera/imaging/Size;)V

    .line 347
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeUI$RecordingLockedDrawable;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method
