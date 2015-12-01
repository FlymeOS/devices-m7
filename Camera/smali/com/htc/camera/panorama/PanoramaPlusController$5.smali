.class Lcom/htc/camera/panorama/PanoramaPlusController$5;
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
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$5;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->onJpegTimeout(Lcom/htc/camera/OneValueEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$900(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/OneValueEventArgs;)V

    .line 212
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 207
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusController$5;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
