.class Lcom/htc/camera/dualcamera/DualCameraUI$2;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/ui/a;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$2;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->onCalculatePreviewBounds(Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z
    invoke-static {v0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$300(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/ui/IOpenGLViewfinder$PreviewBoundsCalculationParams;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
