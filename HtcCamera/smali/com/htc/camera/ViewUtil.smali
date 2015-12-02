.class public Lcom/htc/camera/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static m_TypefaceTextView:Landroid/widget/TextView;


# direct methods
.method public static disableImageView(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 30
    :cond_0
    return-void
.end method

.method public static enableImageView(Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 25
    :cond_0
    return-void
.end method

.method public static getTypefaceFromStyle(I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The method can be called only in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    sget-object v1, Lcom/htc/camera/ViewUtil;->m_TypefaceTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 229
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/camera/ViewUtil;->m_TypefaceTextView:Landroid/widget/TextView;

    .line 230
    :cond_1
    sget-object v1, Lcom/htc/camera/ViewUtil;->m_TypefaceTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 231
    sget-object v0, Lcom/htc/camera/ViewUtil;->m_TypefaceTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 162
    if-nez p0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 168
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setMargin(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 189
    if-nez p0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 193
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 196
    const/4 v1, 0x0

    .line 197
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v3, p1, :cond_2

    .line 199
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v1, v2

    .line 202
    :cond_2
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v3, p2, :cond_3

    .line 204
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    .line 207
    :cond_3
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v3, p3, :cond_4

    .line 209
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v1, v2

    .line 212
    :cond_4
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, p4, :cond_5

    .line 214
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 217
    :goto_1
    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 175
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 181
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 149
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 155
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
