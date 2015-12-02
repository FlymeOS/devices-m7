.class Lcom/htc/camera/component/ObjectTrackingController$2;
.super Ljava/lang/Object;
.source "ObjectTrackingController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraPreviewEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingController;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingController$2;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraPreviewEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController$2;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

    # getter for: Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingController;->access$000(Lcom/htc/camera/component/ObjectTrackingController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController$2;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ObjectTrackingController;->m_IsStarted:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ObjectTrackingController;->access$002(Lcom/htc/camera/component/ObjectTrackingController;Z)Z

    .line 128
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingController$2;->this$0:Lcom/htc/camera/component/ObjectTrackingController;

    # invokes: Lcom/htc/camera/component/ObjectTrackingController;->startFaceDetection()V
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingController;->access$100(Lcom/htc/camera/component/ObjectTrackingController;)V

    .line 130
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 121
    check-cast p3, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ObjectTrackingController$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraPreviewEventArgs;)V

    return-void
.end method
