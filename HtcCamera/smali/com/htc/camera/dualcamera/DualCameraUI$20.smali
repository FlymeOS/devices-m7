.class Lcom/htc/camera/dualcamera/DualCameraUI$20;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 2166
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    new-instance v1, Lcom/htc/camera/CloseableHandleReference;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3200(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/camera/ui/IOpenGLViewfinder;->disablePreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2402(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_StartPreviewDrawingTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4902(Lcom/htc/camera/dualcamera/DualCameraUI;J)J

    .line 2173
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$20;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_IsWaitingForFirstPreviewFrame:Z
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$5002(Lcom/htc/camera/dualcamera/DualCameraUI;Z)Z

    .line 2174
    return-void
.end method
