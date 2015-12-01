.class Lcom/htc/camera/splitcapture/SplitVideoUI$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SplitVideoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const v5, 0x7f08019a

    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v4

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_SplitCaptureReviewView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$800(Lcom/htc/camera/splitcapture/SplitVideoUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 264
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$900(Lcom/htc/camera/splitcapture/SplitVideoUI;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ScrollThreshold:I
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$900(Lcom/htc/camera/splitcapture/SplitVideoUI;)I

    move-result v0

    .line 265
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 264
    :cond_2
    const/16 v0, 0x190

    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastManager:Lcom/htc/camera/ak;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/ak;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1102(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$1200(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScroll() - m_SplitCaptureReviewView is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
