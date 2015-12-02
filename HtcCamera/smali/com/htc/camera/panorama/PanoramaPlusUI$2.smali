.class Lcom/htc/camera/panorama/PanoramaPlusUI$2;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$2;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 307
    check-cast p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusUI$2;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

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
    .line 311
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$2;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->drawPreview(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$1100(Lcom/htc/camera/panorama/PanoramaPlusUI;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    .line 312
    return-void
.end method
