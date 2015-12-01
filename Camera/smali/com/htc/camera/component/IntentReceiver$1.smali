.class Lcom/htc/camera/component/IntentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IntentReceiver;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/camera/component/IntentReceiver$1;->this$0:Lcom/htc/camera/component/IntentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$1;->this$0:Lcom/htc/camera/component/IntentReceiver;

    # getter for: Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IntentReceiver;->access$000(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$1;->this$0:Lcom/htc/camera/component/IntentReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/component/IntentReceiver;->onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$1;->this$0:Lcom/htc/camera/component/IntentReceiver;

    # getter for: Lcom/htc/camera/component/IntentReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/IntentReceiver;->access$100(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
