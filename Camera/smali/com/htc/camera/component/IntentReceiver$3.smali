.class Lcom/htc/camera/component/IntentReceiver$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "IntentReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IntentReceiver;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/camera/component/IntentReceiver$3;->this$0:Lcom/htc/camera/component/IntentReceiver;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$3;->this$0:Lcom/htc/camera/component/IntentReceiver;

    # getter for: Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z
    invoke-static {v0}, Lcom/htc/camera/component/IntentReceiver;->access$200(Lcom/htc/camera/component/IntentReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$3;->this$0:Lcom/htc/camera/component/IntentReceiver;

    invoke-virtual {v0}, Lcom/htc/camera/component/IntentReceiver;->unregisterReceiver()V

    .line 131
    :cond_0
    return-void
.end method
