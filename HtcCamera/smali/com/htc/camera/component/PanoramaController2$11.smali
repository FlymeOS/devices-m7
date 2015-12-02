.class Lcom/htc/camera/component/PanoramaController2$11;
.super Ljava/lang/Object;
.source "PanoramaController2.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaController2;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$11;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 539
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$11;->this$0:Lcom/htc/camera/component/PanoramaController2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    const-string v1, "capture-mode"

    const-string v2, "panorama"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$11;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaController2;->access$1000(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/effect/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$11;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # getter for: Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;
    invoke-static {v0}, Lcom/htc/camera/component/PanoramaController2;->access$1000(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/effect/ac;

    move-result-object v0

    const-string v1, "panorama"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 548
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    invoke-virtual {v0, v3, v3}, Lcom/htc/camera/CameraController;->setJpegThumbnailSize(II)V

    .line 552
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 554
    :cond_2
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 533
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/PanoramaController2$11;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
