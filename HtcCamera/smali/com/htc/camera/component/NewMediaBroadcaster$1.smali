.class Lcom/htc/camera/component/NewMediaBroadcaster$1;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 42
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/NewMediaBroadcaster$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2
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
    .line 46
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # invokes: Lcom/htc/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$000(Lcom/htc/camera/component/NewMediaBroadcaster;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 47
    iget-boolean v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-virtual {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # getter for: Lcom/htc/camera/component/NewMediaBroadcaster;->counter:I
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$100(Lcom/htc/camera/component/NewMediaBroadcaster;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$1;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # invokes: Lcom/htc/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$200(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    .line 56
    :cond_1
    return-void
.end method
