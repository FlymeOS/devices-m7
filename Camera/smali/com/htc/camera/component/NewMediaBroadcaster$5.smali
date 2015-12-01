.class Lcom/htc/camera/component/NewMediaBroadcaster$5;
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
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/NewMediaBroadcaster;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/camera/component/NewMediaBroadcaster$5;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/NewMediaBroadcaster$5;->this$0:Lcom/htc/camera/component/NewMediaBroadcaster;

    # invokes: Lcom/htc/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/htc/camera/component/NewMediaBroadcaster;->access$200(Lcom/htc/camera/component/NewMediaBroadcaster;)V

    .line 117
    return-void
.end method
