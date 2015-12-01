.class Lcom/htc/camera/component/AutoFaceCaptureController$4;
.super Ljava/lang/Object;
.source "AutoFaceCaptureController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFaceCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController$4;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$4;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEnabled:Z
    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$800(Lcom/htc/camera/component/AutoFaceCaptureController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController$4;->this$0:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/component/AutoFaceCaptureController;->updateSmileCaptureState(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->access$900(Lcom/htc/camera/component/AutoFaceCaptureController;ZZ)V

    .line 592
    :cond_0
    return-void
.end method
