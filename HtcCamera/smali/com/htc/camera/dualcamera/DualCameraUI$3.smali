.class Lcom/htc/camera/dualcamera/DualCameraUI$3;
.super Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.source "DualCameraUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$3;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreviewRenderer()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$3;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onDeinitializePreviewRenderer()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$400(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 209
    return-void
.end method

.method protected onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$3;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onDrawPreview(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$500(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V

    .line 215
    return-void
.end method

.method protected onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$3;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onInitializePreviewRenderer(Lcom/htc/camera/PreviewFilterEventArgs;)V
    invoke-static {v0, p1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 221
    return-void
.end method
