.class Lcom/htc/camera/component/IntentReceiver$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "IntentReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/IntentReceiver;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/IntentReceiver;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/camera/component/IntentReceiver$2;->this$0:Lcom/htc/camera/component/IntentReceiver;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$2;->this$0:Lcom/htc/camera/component/IntentReceiver;

    # getter for: Lcom/htc/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z
    invoke-static {v0}, Lcom/htc/camera/component/IntentReceiver;->access$200(Lcom/htc/camera/component/IntentReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/component/IntentReceiver$2;->this$0:Lcom/htc/camera/component/IntentReceiver;

    iget-object v1, p0, Lcom/htc/camera/component/IntentReceiver$2;->this$0:Lcom/htc/camera/component/IntentReceiver;

    # getter for: Lcom/htc/camera/component/IntentReceiver;->m_Permission:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/IntentReceiver;->access$300(Lcom/htc/camera/component/IntentReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/IntentReceiver;->registerReceiver(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
