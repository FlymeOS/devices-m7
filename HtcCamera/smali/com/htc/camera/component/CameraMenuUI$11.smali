.class Lcom/htc/camera/component/CameraMenuUI$11;
.super Ljava/lang/Object;
.source "CameraMenuUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/CameraMenuUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CameraMenuUI;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 794
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraMenuUI$11;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 797
    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mMenuState:Lcom/htc/camera/component/CameraMenuUI$MenuState;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$000(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/component/CameraMenuUI$MenuState;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    if-ne v0, v1, :cond_1

    .line 801
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/CameraMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mAudioManager:Lcom/htc/camera/IAudioManager;
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3600(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/IAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # getter for: Lcom/htc/camera/component/CameraMenuUI;->mManageCam_EnterexitSoundHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/CameraMenuUI;->access$3700(Lcom/htc/camera/component/CameraMenuUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraMenuUI$11;->this$0:Lcom/htc/camera/component/CameraMenuUI;

    # invokes: Lcom/htc/camera/component/CameraMenuUI;->closeCameraMenuUI()V
    invoke-static {v0}, Lcom/htc/camera/component/CameraMenuUI;->access$3200(Lcom/htc/camera/component/CameraMenuUI;)V

    .line 804
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    .line 807
    :cond_1
    return-void
.end method
