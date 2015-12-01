.class Lcom/htc/camera/photopattern/PhotoBoothUI2$4;
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
    .line 552
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 552
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

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
    const/4 v3, 0x0

    .line 559
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "photoBooth countDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_BlockManager:Lcom/htc/camera/w;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$400(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/w;

    move-result-object v1

    const-string v2, "Taking picture"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Lcom/htc/camera/w;->blockCaptureUI(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mTakingPictureBlockHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$302(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 565
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-virtual {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mCountDownEndSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1200(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v3, v3}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$600(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_AudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$500(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 572
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # setter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->mHasAudioFocusForSelfTimer:Z
    invoke-static {v0, v3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$602(Lcom/htc/camera/photopattern/PhotoBoothUI2;Z)Z

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1300(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "countDownSelfTimer() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_PhotoBoothController:Lcom/htc/camera/photopattern/PhotoBoothController2;
    invoke-static {v1}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1400(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Lcom/htc/camera/photopattern/PhotoBoothController2;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v5, 0x0

    move v4, v3

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1500(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$4;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, v1, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
