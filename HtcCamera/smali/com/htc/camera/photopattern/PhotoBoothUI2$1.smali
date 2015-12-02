.class Lcom/htc/camera/photopattern/PhotoBoothUI2$1;
.super Ljava/lang/Object;
.source "PhotoBoothUI2.java"

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
.field final synthetic this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/photopattern/PhotoBoothUI2;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$1;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 470
    check-cast p3, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

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
    .line 474
    iget-object v0, p0, Lcom/htc/camera/photopattern/PhotoBoothUI2$1;->this$0:Lcom/htc/camera/photopattern/PhotoBoothUI2;

    # invokes: Lcom/htc/camera/photopattern/PhotoBoothUI2;->onDrawPreviewFilter(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/photopattern/PhotoBoothUI2;->access$000(Lcom/htc/camera/photopattern/PhotoBoothUI2;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    .line 475
    return-void
.end method
