.class Lcom/htc/camera/component/HtcCallbackController$2;
.super Ljava/lang/Object;
.source "HtcCallbackController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/HtcCallbackController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/HtcCallbackController;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/camera/component/HtcCallbackController$2;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
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
    .line 87
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController$2;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    # getter for: Lcom/htc/camera/component/HtcCallbackController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/HtcCallbackController;->access$100(Lcom/htc/camera/component/HtcCallbackController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup HTC call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/HtcCallbackController$2;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    invoke-virtual {v0}, Lcom/htc/camera/component/HtcCallbackController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/HtcCallbackController$2;->this$0:Lcom/htc/camera/component/HtcCallbackController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setHtcCallback(Lcom/htc/camera/wrapper/a;)V

    .line 89
    return-void
.end method
