.class Lcom/htc/camera/component/WatchCompanionBroadcaster$1;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcaster.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.TAKEN_MEDIA_DROPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->sendBroadcast(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$000(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->m_LastContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$102(Lcom/htc/camera/component/WatchCompanionBroadcaster;Landroid/net/Uri;)Landroid/net/Uri;

    .line 166
    :cond_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 153
    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/WatchCompanionBroadcaster$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V

    return-void
.end method
