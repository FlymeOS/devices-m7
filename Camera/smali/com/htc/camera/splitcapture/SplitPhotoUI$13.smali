.class Lcom/htc/camera/splitcapture/SplitPhotoUI$13;
.super Ljava/lang/Object;
.source "SplitPhotoUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1050
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

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
    .line 1054
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController;->PROPERTY_CAPTURE_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$3200(Lcom/htc/camera/splitcapture/SplitPhotoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeOverride() - Back key"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->showPreviewCover()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1500(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1060
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->setGLAnimationState(Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1600(Lcom/htc/camera/splitcapture/SplitPhotoUI;Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;)V

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->endTakingSplitPhoto()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1800(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoUI;->onPanelInfosChanged()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoUI;->access$1900(Lcom/htc/camera/splitcapture/SplitPhotoUI;)V

    .line 1064
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoUI$13;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->restartPreview()Z

    .line 1065
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    .line 1069
    :cond_0
    return-void
.end method
