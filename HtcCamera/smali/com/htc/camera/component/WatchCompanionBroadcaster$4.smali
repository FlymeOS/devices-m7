.class Lcom/htc/camera/component/WatchCompanionBroadcaster$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "WatchCompanionBroadcaster.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # getter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_IsOpenIntentSent:Z
    invoke-static {v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$500(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_IsOpenIntentSent:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$502(Lcom/htc/camera/component/WatchCompanionBroadcaster;Z)Z

    .line 230
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$4;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const-string v1, "com.htc.camera.intent.action.LAUNCH_COMPLETED"

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$600(Lcom/htc/camera/component/WatchCompanionBroadcaster;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method
