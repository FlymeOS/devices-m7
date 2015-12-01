.class public Lcom/htc/lib1/cc/widget/HtcListItemTileImage;
.super Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;
.source "HtcListItemTileImage.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/am;


# instance fields
.field private mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

.field private secondaryDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 110
    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getTileImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic notifyItemMode(I)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->notifyItemMode(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->layout(IIII)V

    .line 139
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->onLayout(ZIIII)V

    .line 140
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->measureChild(Landroid/view/View;II)V

    .line 128
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->onMeasure(II)V

    .line 129
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentWidth:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public bridge synthetic setAutoMotiveMode(Z)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setAutoMotiveMode(Z)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setEnabled(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mComponentHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemImageComponent;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 185
    return-void
.end method

.method public setSecondaryImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->setSecondaryImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    return-void
.end method

.method public setSecondaryImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->invalidate()V

    .line 214
    return-void
.end method

.method public setSecondaryImageResource(I)V
    .locals 4

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->invalidate()V

    .line 204
    :cond_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "HtcListItemTileImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTileImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    return-void
.end method

.method public setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    return-void
.end method

.method public setTileImageResource(I)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->mBadge:Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    return-void
.end method
