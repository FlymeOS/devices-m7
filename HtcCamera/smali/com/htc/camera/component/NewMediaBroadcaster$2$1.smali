.class Lcom/htc/camera/component/NewMediaBroadcaster$2$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

.field final synthetic val$e:Lcom/htc/camera/MediaEventArgs;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster$2;Lcom/htc/camera/MediaEventArgs;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

    iput-object p2, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/htc/camera/MediaEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {v0}, Lcom/htc/camera/MediaEventArgs;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/htc/camera/MediaEventArgs;

    iget-object v2, v2, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    iget-object v1, v1, Lcom/htc/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/htc/camera/io/MediaSaveEventArgs;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->val$e:Lcom/htc/camera/MediaEventArgs;

    iget-boolean v0, v0, Lcom/htc/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$2$1;->this$1:Lcom/htc/camera/component/NewMediaBroadcaster$2;

    iget-object v0, v0, Lcom/htc/camera/component/NewMediaBroadcaster$2;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # invokes: Lcom/htc/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$200(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    .line 82
    :cond_1
    return-void

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
