.class Lcom/htc/camera/component/AutoFaceCaptureController$3;
.super Ljava/lang/Object;
.source "AutoFaceCaptureController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$3;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$3;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    iget-object v1, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureController;->setupParamsBeforeTakingPicture(Lcom/htc/camera/CameraController;)Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$700(Lcom/htc/camera/component/AutoFaceCaptureController;Lcom/htc/camera/CameraController;)Z

    .line 581
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 576
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/AutoFaceCaptureController$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
