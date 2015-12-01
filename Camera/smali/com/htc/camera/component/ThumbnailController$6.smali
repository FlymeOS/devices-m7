.class Lcom/htc/camera/component/ThumbnailController$6;
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
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailController;->access$302(Lcom/htc/camera/component/ThumbnailController;Z)Z

    .line 1040
    iget-object v6, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    monitor-enter v6

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$200(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/component/ThumbnailUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$100(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v1, p0, Lcom/htc/camera/component/ThumbnailController$6;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/htc/camera/component/ThumbnailUI;
    invoke-static {v1}, Lcom/htc/camera/component/ThumbnailController;->access$200(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/component/ThumbnailUI;

    move-result-object v1

    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ThumbnailController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1044
    :cond_0
    monitor-exit v6

    .line 1045
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
