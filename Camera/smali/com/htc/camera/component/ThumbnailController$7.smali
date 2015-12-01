.class Lcom/htc/camera/component/ThumbnailController$7;
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
        "Lcom/htc/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 1052
    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$600(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/media/ImageMediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    .line 1056
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$700(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown media is deleted, clear cache"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailController;->access$800(Lcom/htc/camera/component/ThumbnailController;Z)V

    .line 1064
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    iget-boolean v0, p3, Lcom/htc/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ThumbnailController;->removeCachedThumbnailImage(Ljava/lang/String;)Z

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # setter for: Lcom/htc/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/ThumbnailController;->access$302(Lcom/htc/camera/component/ThumbnailController;Z)Z

    .line 1074
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$1000(Lcom/htc/camera/component/ThumbnailController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1075
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/16 v1, 0x2711

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 1079
    :cond_2
    :goto_1
    return-void

    .line 1059
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->m_LastMediaInfo:Lcom/htc/camera/media/ImageMediaInfo;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$600(Lcom/htc/camera/component/ThumbnailController;)Lcom/htc/camera/media/ImageMediaInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/media/ImageMediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$900(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Latest media is deleted, clear cache"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/ThumbnailController;->clearCachedMediaInfo(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailController;->access$800(Lcom/htc/camera/component/ThumbnailController;Z)V

    goto :goto_0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1077
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$7;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # getter for: Lcom/htc/camera/component/ThumbnailController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ThumbnailController;->access$1100(Lcom/htc/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1048
    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$7;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V

    return-void
.end method
