.class Lcom/htc/camera/component/ObjectTrackingRenderer$1;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ObjectTrackingRenderer;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$1;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 461
    check-cast p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ObjectTrackingRenderer$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ">;",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$1;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # getter for: Lcom/htc/camera/component/ObjectTrackingRenderer;->m_Use3DRendering:Z
    invoke-static {v0}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$100(Lcom/htc/camera/component/ObjectTrackingRenderer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/htc/camera/component/ObjectTrackingRenderer$1;->this$0:Lcom/htc/camera/component/ObjectTrackingRenderer;

    # invokes: Lcom/htc/camera/component/ObjectTrackingRenderer;->drawObjects(Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/component/ObjectTrackingRenderer;->access$200(Lcom/htc/camera/component/ObjectTrackingRenderer;Lcom/htc/camera/ui/CameraPreviewOverlayEventArgs;)V

    .line 467
    :cond_0
    return-void
.end method
