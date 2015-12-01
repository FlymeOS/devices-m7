.class Lcom/htc/camera/panorama/PanoramaPlusController$13;
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
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
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
    .line 824
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$2500(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$2600(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->stopCapture(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$2300(Lcom/htc/camera/panorama/PanoramaPlusController;Z)V

    .line 827
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController$13;->this$0:Lcom/htc/camera/panorama/PanoramaPlusController;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusController;->closeEngine()V
    invoke-static {v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->access$2400(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    .line 829
    :cond_0
    return-void
.end method
