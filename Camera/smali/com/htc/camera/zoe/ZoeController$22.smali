.class Lcom/htc/camera/zoe/ZoeController$22;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 2437
    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1100(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_1

    .line 2442
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$4000(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2444
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-virtual {v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 2445
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z
    invoke-static {v0, v4}, Lcom/htc/camera/zoe/ZoeController;->access$4002(Lcom/htc/camera/zoe/ZoeController;Z)Z

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2451
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2300(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2452
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$4100(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - First shutter is received, but no video recording"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$4200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->restart()V

    .line 2456
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1100(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_3

    .line 2457
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/16 v2, 0x2712

    sget-object v3, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/zoe/ZoeController;->access$4300(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    goto :goto_0

    .line 2460
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/16 v2, 0x2713

    sget-object v3, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/zoe/ZoeController;->access$4400(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    .line 2461
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController$22;->this$0:Lcom/htc/camera/zoe/ZoeController;

    const/16 v2, 0x2714

    sget-object v3, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/zoe/ZoeController;->access$4500(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 2432
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeController$22;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
