.class Lcom/htc/camera/component/WatchCompanionBroadcaster$2;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-virtual {v0}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;-><init>(Lcom/htc/camera/component/WatchCompanionBroadcaster$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 204
    return-void
.end method
