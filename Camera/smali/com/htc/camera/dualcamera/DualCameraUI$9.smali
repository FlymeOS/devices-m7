.class Lcom/htc/camera/dualcamera/DualCameraUI$9;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    new-instance v1, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3200(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3102(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 1318
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$9;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v1, 0x2742

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3300(Lcom/htc/camera/dualcamera/DualCameraUI;I)V

    .line 1321
    :cond_0
    return-void
.end method
