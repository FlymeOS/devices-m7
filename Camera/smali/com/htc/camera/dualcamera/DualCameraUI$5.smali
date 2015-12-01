.class Lcom/htc/camera/dualcamera/DualCameraUI$5;
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
    .line 910
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$5;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$5;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$5;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2400(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewRenderingDisableHandleRef:Lcom/htc/camera/CloseableHandleReference;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2402(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CloseableHandleReference;)Lcom/htc/camera/CloseableHandleReference;

    .line 915
    return-void
.end method
