.class Lcom/htc/camera/dualcamera/DualCaptureMode$2;
.super Ljava/lang/Object;
.source "DualCaptureMode.java"

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
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCaptureMode;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 121
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$200(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/DualCaptureMode;->linkToComponent()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$300(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/DualCaptureMode;->m_IsEnter:Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$400(Lcom/htc/camera/dualcamera/DualCaptureMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const/4 v0, 0x1

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/DualCaptureMode;->m_UI:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$500(Lcom/htc/camera/dualcamera/DualCaptureMode;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/camera/dualcamera/IDualCameraController;->enter(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCaptureMode$2;->this$0:Lcom/htc/camera/dualcamera/DualCaptureMode;

    # setter for: Lcom/htc/camera/dualcamera/DualCaptureMode;->m_Retry:Z
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCaptureMode;->access$202(Lcom/htc/camera/dualcamera/DualCaptureMode;Z)Z

    .line 133
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
