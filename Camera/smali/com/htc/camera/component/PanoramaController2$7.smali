.class Lcom/htc/camera/component/PanoramaController2$7;
.super Ljava/lang/Object;
.source "PanoramaController2.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaController2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaController2;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2$7;->this$0:Lcom/htc/camera/component/PanoramaController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 348
    check-cast p3, Lcom/htc/camera/imaging/JpegEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/PanoramaController2$7;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/JpegEventArgs;)V

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
    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2$7;->this$0:Lcom/htc/camera/component/PanoramaController2;

    # invokes: Lcom/htc/camera/component/PanoramaController2;->onPictureTaken(Lcom/htc/camera/imaging/JpegEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/component/PanoramaController2;->access$200(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/imaging/JpegEventArgs;)V

    .line 353
    return-void
.end method
