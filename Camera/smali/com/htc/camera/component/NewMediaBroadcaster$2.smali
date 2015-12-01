.class Lcom/htc/camera/component/NewMediaBroadcaster$2;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

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
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    new-instance v1, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;

    invoke-direct {v1, p0, p3}, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;-><init>(Lcom/htc/camera/component/NewMediaBroadcaster$2;Lcom/htc/camera/MediaEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/NewMediaBroadcaster;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # getter for: Lcom/htc/camera/component/NewMediaBroadcaster;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$300(Lcom/htc/camera/component/NewMediaBroadcaster;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 59
    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/NewMediaBroadcaster$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V

    return-void
.end method
