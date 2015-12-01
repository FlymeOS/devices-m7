.class Lcom/htc/camera/component/FlashRestrictionController$1;
.super Lcom/htc/camera/WorkerThread;
.source "FlashRestrictionController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {p0, p2}, Lcom/htc/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-virtual {v0}, Lcom/htc/camera/component/FlashRestrictionController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->handleAsyncMessage(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/htc/camera/component/FlashRestrictionController;->access$000(Lcom/htc/camera/component/FlashRestrictionController;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 72
    :cond_1
    return-void
.end method

.method protected onEnter()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # invokes: Lcom/htc/camera/component/FlashRestrictionController;->checkAllRestrictions()V
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$100(Lcom/htc/camera/component/FlashRestrictionController;)V

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    iget-object v1, p0, Lcom/htc/camera/component/FlashRestrictionController$1;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/FlashRestrictionController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 79
    return-void
.end method
