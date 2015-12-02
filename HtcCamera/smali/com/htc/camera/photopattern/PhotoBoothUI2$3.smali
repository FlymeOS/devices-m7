.class Lcom/htc/camera/photopattern/PhotoBoothUI2$3;
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
    .line 532
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 532
    check-cast p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/photopattern/SelfTimerEventArgs;)V
    .locals 3
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
    .line 539
    iget-object v0, p3, Lcom/htc/camera/photopattern/SelfTimerEventArgs;->mName:Ljava/lang/String;

    const-string v1, "photoBooth countDown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->m_IsCapturing:Z
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1000(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->resetIndicatorUI()V
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$900(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V

    .line 547
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # getter for: Lcom/htc/camera/photopattern/PhotoBoothUI2;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$1100(Lcom/htc/camera/photopattern/PhotoBoothUI2;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Timer Canceled !"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v0, v0, Lcom/htc/camera/photopattern/PhotoBoothUI2;->isPhotoBoothCountDownEnable:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$3;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    iget-object v1, v1, Lcom/htc/camera/photopattern/PhotoBoothUI2;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
