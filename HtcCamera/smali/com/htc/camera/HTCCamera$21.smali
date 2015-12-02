.class Lcom/htc/camera/HTCCamera$21;
.super Ljava/lang/Object;
.source "HTCCamera.java"

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
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1702
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$21;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V
    .locals 5
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
    const/4 v4, 0x0

    .line 1707
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "HTCCamera takePicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    iget-wide v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    iget-wide v2, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mTotalTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1713
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3400(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/w;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$3300(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/camera/w;->unblockCaptureUI(Lcom/htc/camera/Handle;)Z

    .line 1714
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$3302(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1717
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1719
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->requestAudioFocus()V

    .line 1720
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$3702(Lcom/htc/camera/HTCCamera;Z)Z

    .line 1725
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->selfTimerCountDownEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    iget-wide v2, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1728
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1729
    iget-wide v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mRemainingTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1730
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCountDownSoundMiddleHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$3800(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1732
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$21;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCountDownSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$3900(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto/16 :goto_0
.end method
