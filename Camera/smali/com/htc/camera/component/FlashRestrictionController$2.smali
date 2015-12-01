.class Lcom/htc/camera/component/FlashRestrictionController$2;
.super Landroid/telephony/PhoneStateListener;
.source "FlashRestrictionController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/FlashRestrictionController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/camera/component/FlashRestrictionController$2;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$2;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$200(Lcom/htc/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/camera/component/FlashRestrictionController$2;->this$0:Lcom/htc/camera/component/FlashRestrictionController;

    # getter for: Lcom/htc/camera/component/FlashRestrictionController;->m_WorkerThread:Lcom/htc/camera/WorkerThread;
    invoke-static {v0}, Lcom/htc/camera/component/FlashRestrictionController;->access$300(Lcom/htc/camera/component/FlashRestrictionController;)Lcom/htc/camera/WorkerThread;

    move-result-object v0

    const/16 v1, 0x2715

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/WorkerThread;->sendMessage(IJZ)Z

    .line 86
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 87
    return-void
.end method
