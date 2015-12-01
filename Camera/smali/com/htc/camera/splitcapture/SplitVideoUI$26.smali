.class Lcom/htc/camera/splitcapture/SplitVideoUI$26;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$26;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$26;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$26;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_PreviousToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1340
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$26;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1341
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$26;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SwitchReviewLocationGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$5200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
