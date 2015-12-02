.class Lcom/htc/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# instance fields
.field private mCameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 735
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 736
    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/HTCCamera$MainHandler;)Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 746
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    if-nez v0, :cond_1

    .line 748
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main handler is released, drop message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 759
    :sswitch_0
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # setter for: Lcom/htc/camera/HTCCamera;->mEnableSensorFocus:Z
    invoke-static {v0, v3}, Lcom/htc/camera/HTCCamera;->access$1002(Lcom/htc/camera/HTCCamera;Z)Z

    .line 763
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :sswitch_1
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->deactivate()V

    .line 769
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :sswitch_2
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "HTCCamera"

    const-string v1, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :sswitch_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->onCameraThreadRunning()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1100(Lcom/htc/camera/HTCCamera;)V

    goto :goto_0

    .line 789
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 790
    iget-object v2, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    # invokes: Lcom/htc/camera/HTCCamera;->completeCapture(Lcom/htc/camera/CaptureHandle;J)V
    invoke-static {v2, v1, v3, v4}, Lcom/htc/camera/HTCCamera;->access$1200(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;J)V

    goto :goto_0

    .line 795
    :sswitch_5
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->leaveQuickLaunchState()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1300(Lcom/htc/camera/HTCCamera;)V

    goto :goto_0

    .line 800
    :sswitch_6
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->lock2A()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1400(Lcom/htc/camera/HTCCamera;)V

    goto :goto_0

    .line 806
    :sswitch_7
    const-string v0, "HTCCamera"

    const-string v1, "MSG_RECREATE_ACTIVITY - recreate activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/HTCCamera$MainHandler$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/HTCCamera$MainHandler$1;-><init>(Lcom/htc/camera/HTCCamera$MainHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 824
    :sswitch_8
    const-string v0, "HTCCamera"

    const-string v1, "MSG_TOUCH_FOCUS - trigger focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 829
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mTouchFocusDisabledCounter:I
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$1600(Lcom/htc/camera/HTCCamera;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 830
    iget-object v2, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/HTCCamera;->takeFocus(II)V

    .line 832
    iget v0, p1, Landroid/os/Message;->arg1:I

    rsub-int v1, v0, 0x3e8

    .line 834
    const-string v0, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_TOUCH_FOCUS - lockAEAFDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x277c

    int-to-long v3, v1

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/ap;->b(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    .line 845
    :cond_2
    const-string v0, "HTCCamera"

    const-string v1, "MSG_TOUCH_FOCUS - Will not take focus due to Touch Focus is disabled."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    :sswitch_9
    const-string v0, "HTCCamera"

    const-string v1, "MSG_KILLED_OCCUPIED_AUDIO_PROCESS - killed occupied audio proces"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mComponentManager:Lcom/htc/camera/component/UIComponentManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1700(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 854
    if-eqz v0, :cond_3

    .line 855
    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 857
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "MSG_KILLED_OCCUPIED_AUDIO_PROCESS() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 862
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 866
    :sswitch_b
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->updateWindowFlag()V

    goto/16 :goto_0

    .line 870
    :sswitch_c
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 871
    const-string v0, "HTCCamera"

    const-string v1, "clear FLAG_DISMISS_KEYGUARD"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :sswitch_d
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->updateNavigationBarState()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1800(Lcom/htc/camera/HTCCamera;)V

    goto/16 :goto_0

    .line 752
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x24 -> :sswitch_1
        0x38 -> :sswitch_2
        0x2776 -> :sswitch_3
        0x277a -> :sswitch_4
        0x277b -> :sswitch_5
        0x277c -> :sswitch_6
        0x277e -> :sswitch_9
        0x27d8 -> :sswitch_a
        0x283c -> :sswitch_8
        0x28a1 -> :sswitch_b
        0x28a2 -> :sswitch_c
        0x2904 -> :sswitch_d
        0x2968 -> :sswitch_7
    .end sparse-switch
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/HTCCamera$MainHandler;->mCameraActivity:Lcom/htc/camera/HTCCamera;

    .line 741
    return-void
.end method
