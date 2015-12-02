.class Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 332
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$000(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 333
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$100(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$500(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v4

    # invokes: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$600(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 335
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->triangleLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$300(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$400(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$500(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)I

    move-result v4

    # invokes: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V
    invoke-static {v1, v0, v2, v3, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$700(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)V

    .line 336
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dropdownLayout:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->access$200(Lcom/htc/lib1/cc/widget/PopupBubbleWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(IIII)V

    .line 338
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
