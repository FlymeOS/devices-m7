.class Lcom/htc/camera/io/SDCardUI$5;
.super Ljava/lang/Object;
.source "SDCardUI.java"

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
        "Lcom/htc/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/SDCardUI;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/SDCardUI;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    iput-object p2, p0, Lcom/htc/camera/io/SDCardUI$5;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    if-ne p1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$900(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mount SD card"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->checkSerial()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1000(Lcom/htc/camera/io/SDCardUI;)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->setClassLevel(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/io/SDCardUI;->access$1200(Lcom/htc/camera/io/SDCardUI;I)V

    .line 284
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->setPerformanceLowCount(I)V
    invoke-static {v0, v2}, Lcom/htc/camera/io/SDCardUI;->access$1300(Lcom/htc/camera/io/SDCardUI;I)V

    .line 285
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # setter for: Lcom/htc/camera/io/SDCardUI;->m_PenddingShowDialog:Z
    invoke-static {v0, v2}, Lcom/htc/camera/io/SDCardUI;->access$1402(Lcom/htc/camera/io/SDCardUI;Z)Z

    .line 286
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    const/16 v1, 0x2714

    # invokes: Lcom/htc/camera/io/SDCardUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/io/SDCardUI;->access$1500(Lcom/htc/camera/io/SDCardUI;I)V

    .line 287
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # invokes: Lcom/htc/camera/io/SDCardUI;->finishImprovementDialog()V
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1600(Lcom/htc/camera/io/SDCardUI;)V

    .line 289
    :cond_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/SDCardUI$5;->this$0:Lcom/htc/camera/io/SDCardUI;

    # getter for: Lcom/htc/camera/io/SDCardUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/SDCardUI;->access$1100(Lcom/htc/camera/io/SDCardUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unmount SD card"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 269
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/io/SDCardUI$5;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
