.class Lcom/htc/camera/panorama/PanoramaPlusController$1;
.super Ljava/lang/Object;
.source "PanoramaPlusController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/imaging/RawImageEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 151
    check-cast p3, Lcom/htc/camera/imaging/RawImageEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/RawImageEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/RawImageEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$1;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    iget-object v1, p3, Lcom/htc/camera/imaging/RawImageEventArgs;->rawImage:[B

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->updatePreviewFrame([B)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$000(Lcom/htc/camera/panorama/PanoramaPlusController;[B)V

    .line 156
    return-void
.end method
