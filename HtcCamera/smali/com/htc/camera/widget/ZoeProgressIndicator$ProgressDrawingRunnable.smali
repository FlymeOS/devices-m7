.class final Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;
.super Ljava/lang/Object;
.source "ZoeProgressIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public canvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/htc/camera/widget/ZoeProgressIndicator;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->canvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->this$0:Lcom/htc/camera/widget/ZoeProgressIndicator;

    # getter for: Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;
    invoke-static {v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->access$100(Lcom/htc/camera/widget/ZoeProgressIndicator;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->this$0:Lcom/htc/camera/widget/ZoeProgressIndicator;

    # getter for: Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/htc/camera/widget/ZoeProgressIndicator;->access$200(Lcom/htc/camera/widget/ZoeProgressIndicator;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 66
    :cond_0
    return-void
.end method
