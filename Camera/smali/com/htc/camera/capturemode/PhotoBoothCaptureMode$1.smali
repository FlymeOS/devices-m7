.class Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;
.super Ljava/lang/Object;
.source "PhotoBoothCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    # getter for: Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z
    invoke-static {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->access$000(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    # invokes: Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->linkToComponents()Z
    invoke-static {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->access$100(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    # getter for: Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_IsEnter:Z
    invoke-static {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->access$200(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    # getter for: Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->access$300(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-isRealtimeComponentsCreated  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v5}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v5}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    sget-object v5, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/htc/camera/HTCCamera;->switchMode(Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraMode;Z)Z

    .line 114
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v2, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_PhototBoothUI:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    invoke-virtual {v2, v1, v0}, Lcom/htc/camera/photopattern/IPhotoBoothController;->enterPhotoBoothMode(ILcom/htc/camera/photopattern/PhotoBoothPattern;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    # setter for: Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->m_Retry:Z
    invoke-static {v0, v3}, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;->access$002(Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;Z)Z

    .line 119
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 113
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0
.end method
