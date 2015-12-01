.class Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;

.field final synthetic val$e:Lcom/htc/camera/io/MediaSaveEventArgs;

.field final synthetic val$rawThumb:[B

.field final synthetic val$thumbSize:Lcom/htc/camera/imaging/Size;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->this$2:Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;

    iput-object p2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$e:Lcom/htc/camera/io/MediaSaveEventArgs;

    iput-object p3, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$rawThumb:[B

    iput-object p4, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$thumbSize:Lcom/htc/camera/imaging/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->this$2:Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;

    iget-object v0, v0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1;->this$1:Lcom/htc/camera/component/WatchCompanionBroadcaster$2;

    iget-object v0, v0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2;->this$0:Lcom/htc/camera/component/WatchCompanionBroadcaster;

    iget-object v1, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$e:Lcom/htc/camera/io/MediaSaveEventArgs;

    iget-object v2, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$rawThumb:[B

    iget-object v3, p0, Lcom/htc/camera/component/WatchCompanionBroadcaster$2$1$1;->val$thumbSize:Lcom/htc/camera/imaging/Size;

    # invokes: Lcom/htc/camera/component/WatchCompanionBroadcaster;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/WatchCompanionBroadcaster;->access$400(Lcom/htc/camera/component/WatchCompanionBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;[BLcom/htc/camera/imaging/Size;)V

    .line 199
    return-void
.end method
