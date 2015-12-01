.class Lcom/htc/camera/splitcapture/SplitPhotoUI$18;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

.field final synthetic val$animationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field final synthetic val$dstRect:Landroid/graphics/RectF;

.field final synthetic val$splitPanelInfos:Ljava/util/List;

.field final synthetic val$srcRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Ljava/util/List;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$splitPanelInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$animationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    iput-object p4, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$srcRect:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$dstRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/gl/BitmapBrush;

    .line 1575
    invoke-virtual {v0}, Lcom/htc/camera/gl/BitmapBrush;->release()V

    goto :goto_0

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1577
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1580
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$splitPanelInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;

    .line 1582
    new-instance v2, Lcom/htc/camera/gl/Quadrangle;

    invoke-direct {v2}, Lcom/htc/camera/gl/Quadrangle;-><init>()V

    .line 1583
    new-instance v3, Lcom/htc/camera/gl/BitmapBrush;

    iget-object v4, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->jpegBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Lcom/htc/camera/gl/BitmapBrush;-><init>(Landroid/graphics/Bitmap;)V

    .line 1584
    invoke-virtual {v2, v3}, Lcom/htc/camera/gl/Quadrangle;->setFill(Lcom/htc/camera/gl/Brush;)V

    .line 1585
    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$SplitPanelInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;)V

    .line 1587
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapBrushes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4100(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLBitmapQuadrangles:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$animationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1593
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Preparing:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 1594
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$srcRect:Landroid/graphics/RectF;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationSrcBounds:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1595
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$dstRect:Landroid/graphics/RectF;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationDstBounds:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4402(Lcom/htc/camera/splitcapture/SplitPhotoUI;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1600
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->val$animationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationType:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$4502(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 1602
    return-void

    .line 1598
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$18;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->DrawOnce:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # setter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->m_GLAnimationState:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3302(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    goto :goto_2
.end method
