.class Lcom/htc/camera/photopattern/PhotoBoothUI2$2;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 493
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/photopattern/SelfTimerEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mIndicatorViewContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->updateIndicatorUI()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 502
    :cond_0
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "photoBooth countDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    iget-wide v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    iget-wide v2, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mTotalTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, v1, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$400(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/w;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 509
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$302(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 512
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->requestAudioFocus()V

    .line 515
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0, v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$602(Lcom/htc/camera/photopattern/PhotoBoothUI2;Z)Z

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    iget-wide v2, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 522
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 523
    iget-wide v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 524
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$700(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$2;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$800(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto/16 :goto_0
.end method
