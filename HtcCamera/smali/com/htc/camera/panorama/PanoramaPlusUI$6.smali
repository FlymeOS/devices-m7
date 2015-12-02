.class Lcom/htc/camera/panorama/PanoramaPlusUI$6;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$6;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 874
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusUI$6;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$6;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$6;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2400(Lcom/htc/camera/panorama/PanoramaPlusUI;)I

    move-result v0

    if-lez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$6;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2500(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    .line 883
    :cond_0
    return-void
.end method
