.class Lcom/htc/camera/dualcamera/DualCameraUI$17;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

.field final synthetic val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 0

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$17;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$17;->val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$17;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$17;->val$previewAdapter:Lcom/htc/camera/CameraPreviewAdapter;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onPreviewAdapterCreated(Lcom/htc/camera/CameraPreviewAdapter;)V
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4500(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/CameraPreviewAdapter;)V

    .line 1840
    return-void
.end method
