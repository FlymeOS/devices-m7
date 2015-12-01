.class Lcom/htc/camera/component/FlashRestrictionController$9;
.super Landroid/os/FileObserver;
.source "FlashRestrictionController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$9;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$9;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$300(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2716

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/WorkerThread;->sendMessage(IJZ)Z

    .line 530
    return-void
.end method
