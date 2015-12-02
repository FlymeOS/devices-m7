.class public Lcom/htc/camera/widget/ImageTextView;
.super Landroid/widget/LinearLayout;
.source "ImageTextView.java"


# instance fields
.field private m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

.field private m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ColorMultiplyImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 106
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setAlpha(F)V

    .line 109
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setAlpha(F)V

    .line 114
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    iget-object v1, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setAlpha(F)V

    .line 126
    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setAlpha(F)V

    .line 132
    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setImageResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImageTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_ImageView:Lcom/htc/camera/widget/ColorMultiplyImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ColorMultiplyImageView;->setAlpha(F)V

    .line 138
    :cond_0
    return-void
.end method

.method public setImageTextPadding(I)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 147
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ColorMultiplyTextView;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImageTextView;->requestLayout()V

    .line 149
    return-void
.end method

.method public final setText(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->setText(I)V

    .line 161
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/camera/widget/ImageTextView;->m_TextView:Lcom/htc/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ColorMultiplyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method
