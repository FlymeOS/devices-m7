.class final Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ThumbnailUI.java"


# instance fields
.field private m_DefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_ThumbnailBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    .line 149
    const v0, 0x7f02008e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    .line 150
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0a0350

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0a0351

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7f0a0352

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const v2, 0x7f0a0353

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 154
    const v0, 0x7f02008f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_DefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_DefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 156
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$300(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDrawable.draw() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$500(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDrawable.draw() - Recycled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_DefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$800(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDrawable.draw() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$600(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDrawable.draw() - Draw thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailUI;->access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/camera/component/ThumbnailUI;->access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 181
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 182
    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/camera/component/ThumbnailUI;->access$400(Lcom/htc/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # getter for: Lcom/htc/camera/component/ThumbnailUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailUI;->access$700(Lcom/htc/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailDrawable.draw() - No thumbnail image to draw"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$ThumbnailDrawable;->m_DefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
