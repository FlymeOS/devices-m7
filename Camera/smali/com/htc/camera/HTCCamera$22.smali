.class Lcom/htc/camera/HTCCamera$22;
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
    .line 1736
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1736
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/HTCCamera$22;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

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

    .line 1743
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "HTCCamera takePicture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    :goto_0
    return-void

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCaptureUIBlockManager:Lcom/htc/camera/w;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$3400(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/w;

    move-result-object v1

    const-string v2, "Taking picture"

    invoke-interface {v1, v2, v5}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/HTCCamera;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$3302(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1749
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1752
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1753
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCountDownZeroSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$4000(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 1759
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3700(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1761
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1762
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # setter for: Lcom/htc/camera/HTCCamera;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0, v4}, Lcom/htc/camera/HTCCamera;->access$3702(Lcom/htc/camera/HTCCamera;Z)Z

    .line 1766
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$4200(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1767
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mRotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$4200(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    const-string v2, "Taking picture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/HTCCamera;->mTakingPictureLockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$4302(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 1770
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->resetPreviewState()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$4400(Lcom/htc/camera/HTCCamera;)V

    .line 1771
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1772
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1775
    const-string v0, "HTCCamera"

    const-string v1, "countDownSelfTimer() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCameraThread:Lcom/htc/camera/CameraThread;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$3500(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/htc/camera/CameraThread;->takePicture(Z)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    # setter for: Lcom/htc/camera/HTCCamera;->mCurrentPhotoCaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/htc/camera/HTCCamera;->access$4502(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    goto/16 :goto_0

    .line 1755
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$3600(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$22;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$4100(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    goto/16 :goto_1
.end method
