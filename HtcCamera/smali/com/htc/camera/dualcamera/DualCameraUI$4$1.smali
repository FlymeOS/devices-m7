.class Lcom/htc/camera/dualcamera/DualCameraUI$4$1;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI$4;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$800(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnePointerTouch() - Single tap"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 267
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 269
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI$4;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 270
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$700(Lcom/htc/camera/dualcamera/DualCameraUI$4;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 271
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_SingleTapMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$702(Lcom/htc/camera/dualcamera/DualCameraUI$4;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 272
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$4$1;->this$1:Lcom/htc/camera/dualcamera/DualCameraUI$4;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI$4;->m_IsWaitingForSingleTap:Z
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI$4;->access$902(Lcom/htc/camera/dualcamera/DualCameraUI$4;Z)Z

    .line 274
    :cond_0
    return-void
.end method
