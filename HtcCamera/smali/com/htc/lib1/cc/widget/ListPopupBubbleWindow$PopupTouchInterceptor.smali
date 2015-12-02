.class Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V
    .locals 0

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V
    .locals 0

    .prologue
    .line 2192
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2199
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 2201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 2203
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-ltz v3, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getHeight()I

    move-result v2

    if-ge v3, v2, :cond_1

    .line 2204
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2209
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mCustomizedTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1700(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mCustomizedTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1700(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2211
    :goto_1
    return v0

    .line 2205
    :cond_1
    if-ne v1, v0, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;->this$0:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;

    # getter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2211
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
