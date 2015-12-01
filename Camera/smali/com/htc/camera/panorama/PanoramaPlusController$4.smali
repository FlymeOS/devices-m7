.class Lcom/htc/camera/panorama/PanoramaPlusController$4;
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
        "Lcom/htc/camera/imaging/JpegEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 199
    check-cast p3, Lcom/htc/camera/imaging/JpegEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusController$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/JpegEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/JpegEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/imaging/JpegEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->onJpegReceived(Lcom/htc/camera/imaging/JpegEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$800(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/imaging/JpegEventArgs;)V

    .line 204
    return-void
.end method
