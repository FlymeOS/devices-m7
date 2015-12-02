.class Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;
.super Landroid/widget/ImageView;
.source "HtcListItemTileImage.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemTileImage$MaskImageView;->this$0:Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    # getter for: Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->secondaryDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;->access$000(Lcom/htc/lib1/cc/widget/HtcListItemTileImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    :cond_0
    return-void
.end method
