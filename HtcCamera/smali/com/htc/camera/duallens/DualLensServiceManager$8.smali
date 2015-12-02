.class Lcom/htc/camera/duallens/DualLensServiceManager$8;
.super Ljava/lang/Object;
.source "DualLensServiceManager.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$8;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$8;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    # getter for: Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$1200(Lcom/htc/camera/duallens/DualLensServiceManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 309
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/duallens/DualLensServiceManager$8;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
