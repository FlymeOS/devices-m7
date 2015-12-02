.class Lcom/htc/camera/dualcamera/DualCameraUI$19;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

.field final synthetic val$previewSurfaceBound:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->val$previewSurfaceBound:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2114
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->val$previewSurfaceBound:Landroid/graphics/Rect;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewSurfaceBound:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4702(Lcom/htc/camera/dualcamera/DualCameraUI;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2116
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/gl/CameraPreviewBrush;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/gl/CameraPreviewBrush;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$19;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_PreviewBrush:Lcom/htc/camera/gl/CameraPreviewBrush;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4800(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/gl/CameraPreviewBrush;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v4, v3}, Lcom/htc/camera/gl/CameraPreviewBrush;->setSourceRect(FFFF)V

    goto :goto_0
.end method
