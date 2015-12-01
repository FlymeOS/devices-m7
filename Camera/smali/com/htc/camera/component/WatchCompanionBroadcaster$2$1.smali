.class Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcaster.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster$2;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 174
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-direct {v1}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    iget-object v0, v0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->createThumbnailImage(Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/imaging/Size;)[B
    invoke-static {v0, p3, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$200(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/imaging/Size;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    iget-object v2, v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    new-instance v3, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;

    invoke-direct {v3, p0, p3, v0, v1}, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 201
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    iget-object v2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    iget-object v2, v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    # getter for: Lcom/htc/camera/component/WatchCompanionBroadcaster;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$300(Lcom/htc/camera/component/WatchCompanionBroadcaster;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onEventReceived() - Fail to create thumbnail image"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    const/4 v0, 0x0

    goto :goto_0
.end method
