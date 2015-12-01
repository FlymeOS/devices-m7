.class Lcom/htc/camera/component/ProcessingDialogUI$2;
.super Ljava/lang/Object;
.source "ProcessingDialogUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ProcessingDialogUI;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProcessingDialogUI;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogUI$2;->this$0:Lcom/htc/camera/component/ProcessingDialogUI;

    iput-object p2, p0, Lcom/htc/camera/component/ProcessingDialogUI$2;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

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
    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI$2;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/camera/effect/EisScene;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI$2;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogUI$2;->this$0:Lcom/htc/camera/component/ProcessingDialogUI;

    # invokes: Lcom/htc/camera/component/ProcessingDialogUI;->showProcessingDialog()V
    invoke-static {v0}, Lcom/htc/camera/component/ProcessingDialogUI;->access$100(Lcom/htc/camera/component/ProcessingDialogUI;)V

    .line 87
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 75
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ProcessingDialogUI$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
