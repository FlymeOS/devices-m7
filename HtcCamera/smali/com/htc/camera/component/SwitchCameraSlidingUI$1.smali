.class Lcom/htc/camera/component/SwitchCameraSlidingUI$1;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_SlidingState:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$400(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;->WAITING_STARTPREVIEW:Lcom/htc/camera/component/SwitchCameraSlidingUI$SlidingState;

    if-ne v0, v1, :cond_1

    .line 416
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    const-class v2, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v1, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$502(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/dualcamera/IDualCameraController;)Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->switchCamera()Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->cancelDragging()V
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    .line 430
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$900(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->switchCaptureMode()Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->cancelDragging()V
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationStart"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$1;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 444
    return-void
.end method
