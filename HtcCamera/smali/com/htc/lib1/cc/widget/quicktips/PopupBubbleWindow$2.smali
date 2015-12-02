.class Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 395
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mParent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    if-eqz v1, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dismiss()V

    .line 416
    :cond_1
    :goto_1
    return-void

    .line 395
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I

    move-result-object v0

    aget v0, v0, v5

    .line 401
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I

    move-result-object v3

    aget v3, v3, v2

    .line 402
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 403
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I

    move-result-object v4

    aget v4, v4, v5

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mDrawingLocation:[I
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)[I

    move-result-object v0

    aget v0, v0, v2

    if-eq v0, v3, :cond_1

    .line 407
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v0, v0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mExpandDirection:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_5

    .line 408
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->dismiss()V

    .line 409
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mGravity:I
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$100(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v3, v3, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v4, v4, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mYoff:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 413
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v3, v3, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mXoff:I

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    iget v4, v4, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->mYoff:I

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->getWidth()I

    move-result v6

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow$2;->this$0:Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->getHeight()I

    move-result v7

    move v5, v2

    # invokes: Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->update(Landroid/view/View;ZIIZII)V
    invoke-static/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;->access$200(Lcom/htc/lib1/cc/widget/quicktips/PopupBubbleWindow;Landroid/view/View;ZIIZII)V

    goto :goto_1
.end method
