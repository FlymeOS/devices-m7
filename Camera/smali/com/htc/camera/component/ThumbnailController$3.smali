.class Lcom/htc/camera/component/ThumbnailController$3;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 998
    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v1

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$100(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p3, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    monitor-exit v1

    .line 1005
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$200(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/component/ThumbnailUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$100(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$300(Lcom/htc/camera/component/ThumbnailController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1003
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v2, p0, Lcom/htc/camera/component/ThumbnailController$3;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;
    invoke-static {v2}, Lcom/htc/camera/component/ThumbnailController;->access$200(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/component/ThumbnailUI;

    move-result-object v2

    const/16 v3, 0x2712

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1004
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 994
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
