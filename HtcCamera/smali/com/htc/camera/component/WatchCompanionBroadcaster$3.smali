.class Lcom/htc/camera/component/WatchCompanionBroadcaster$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "WatchCompanionBroadcaster.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # getter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$100(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.TAKEN_MEDIA_ACCEPTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # getter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$100(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$000(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$3;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$102(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/net/Uri;)Landroid/net/Uri;

    .line 220
    :cond_0
    return-void
.end method
