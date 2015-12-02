.class Lcom/htc/camera/component/ContinuousBurstController$4;
.super Ljava/lang/Object;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstController;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 686
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$800(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtcCallback e.type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", e.arg1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$900(Lcom/htc/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$1000(Lcom/htc/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # setter for: Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z
    invoke-static {v0, v7}, Lcom/htc/camera/component/ContinuousBurstController;->access$1002(Lcom/htc/camera/component/ContinuousBurstController;Z)Z

    .line 692
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    const/16 v1, 0x271c

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstController;->access$1100(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 695
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$1200(Lcom/htc/camera/component/ContinuousBurstController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$600(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/component/ContinuousBurstUI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstController;->access$600(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/component/ContinuousBurstUI;

    move-result-object v1

    const/16 v2, 0x2711

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I
    invoke-static {v3}, Lcom/htc/camera/component/ContinuousBurstController;->access$1300(Lcom/htc/camera/component/ContinuousBurstController;)I

    move-result v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v6}, Lcom/htc/camera/component/ContinuousBurstController;->access$1100(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/camera/component/ContinuousBurstController;->access$1400(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;
    invoke-static {v7}, Lcom/htc/camera/component/ContinuousBurstController;->access$1500(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/Path;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I
    invoke-static {v6}, Lcom/htc/camera/component/ContinuousBurstController;->access$1600(Lcom/htc/camera/component/ContinuousBurstController;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 702
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    # invokes: Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->access$1800(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 703
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->access$1102(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;

    goto/16 :goto_0

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController$4;->this$0:Lcom/htc/camera/component/ContinuousBurstController;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstController;->access$1700(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_IsSavingPhotos true, wait saving picture to do OnExited"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 682
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ContinuousBurstController$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
