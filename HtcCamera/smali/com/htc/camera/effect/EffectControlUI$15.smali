.class Lcom/htc/camera/effect/EffectControlUI$15;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 355
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/EffectControlCircle;->isUserChangeCenterPointAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1200(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/EffectControlCircle;->isUserChangeCenterPointAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1200(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 376
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1200(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/EffectControlCircle;->isUserChangeCenterPointAllowed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1200(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # getter for: Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/EffectControlCircle;->isUserChangeCenterPointAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 373
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$15;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1
.end method
