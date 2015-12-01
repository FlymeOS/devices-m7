.class Lcom/htc/camera/zoe/ZoeController$23;
.super Ljava/lang/Object;
.source "ZoeController.java"

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
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 2468
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$23;->this$0:Lcom/htc/camera/zoe/ZoeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 2468
    check-cast p3, Lcom/htc/camera/imaging/JpegEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeController$23;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/JpegEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 3
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
    .line 2472
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$23;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget v1, p3, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    iget-object v2, p3, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    # invokes: Lcom/htc/camera/zoe/ZoeController;->onJpegDataReceived(I[B)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/zoe/ZoeController;->access$4600(Lcom/htc/camera/zoe/ZoeController;I[B)V

    .line 2473
    return-void
.end method
