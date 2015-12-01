.class Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcImageButton.java"


# instance fields
.field private mPressed:Landroid/graphics/drawable/Drawable;

.field private mRest:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcImageButton;


# direct methods
.method private drawPressed(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->this$0:Lcom/htc/lib1/cc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 850
    :cond_0
    return-void
.end method

.method private drawRest(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 846
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->drawRest(Landroid/graphics/Canvas;)V

    .line 841
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->drawPressed(Landroid/graphics/Canvas;)V

    .line 842
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 898
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 898
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 891
    :goto_0
    return v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 891
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 827
    if-nez p1, :cond_0

    .line 833
    :goto_0
    return v0

    .line 829
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 832
    :cond_2
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 869
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 871
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 873
    :cond_1
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 877
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 813
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 864
    :cond_0
    return-void
.end method

.method public setRestDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    .line 802
    return-void
.end method
