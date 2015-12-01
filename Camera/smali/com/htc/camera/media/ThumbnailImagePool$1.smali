.class Lcom/htc/camera/media/ThumbnailImagePool$1;
.super Ljava/lang/Object;
.source "ThumbnailImagePool.java"

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
.field final synthetic this$0:Lcom/htc/camera/media/ThumbnailImagePool;


# direct methods
.method constructor <init>(Lcom/htc/camera/media/ThumbnailImagePool;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/camera/media/ThumbnailImagePool$1;->this$0:Lcom/htc/camera/media/ThumbnailImagePool;

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
    .line 105
    iget-object v0, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_2

    .line 107
    monitor-enter p0

    .line 109
    :try_start_0
    # getter for: Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;
    invoke-static {}, Lcom/htc/camera/media/ThumbnailImagePool;->access$000()Lcom/htc/camera/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/s;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;

    .line 111
    iget-object v2, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/camera/media/ThumbnailImagePool$ThumbnailImageInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v3, p3, Lcom/htc/camera/MediaEventArgs;->filePath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2, v3}, Lcom/htc/camera/io/Path;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v1, "ThumbnailImagePool"

    const-string v2, "onMediaDeletedEventReceived() - remove deleted thumbnail image"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    # getter for: Lcom/htc/camera/media/ThumbnailImagePool;->m_ThumbnailImagePool:Lcom/htc/camera/s;
    invoke-static {}, Lcom/htc/camera/media/ThumbnailImagePool;->access$000()Lcom/htc/camera/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    .line 115
    # operator-- for: Lcom/htc/camera/media/ThumbnailImagePool;->thumbDone:I
    invoke-static {}, Lcom/htc/camera/media/ThumbnailImagePool;->access$110()I

    .line 119
    :cond_1
    monitor-exit p0

    .line 121
    :cond_2
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 101
    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/media/ThumbnailImagePool$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V

    return-void
.end method
