.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    .prologue
    .line 2215
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 2223
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 2231
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2233
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;->run()V

    .line 2236
    :cond_0
    return-void
.end method
