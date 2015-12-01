.class Lcom/htc/camera/component/AudioResourceRestricController$1;
.super Lcom/htc/camera/trigger/Trigger;
.source "AudioResourceRestricController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioResourceRestricController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$1;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$1;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/AudioResourceRestricController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 81
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$1;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AudioResourceRestricController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ag;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 84
    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$1;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    # getter for: Lcom/htc/camera/component/AudioResourceRestricController;->m_checkOwnAudioResourceHighPriorityProcessRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/camera/component/AudioResourceRestricController;->access$000(Lcom/htc/camera/component/AudioResourceRestricController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    .line 86
    :cond_0
    return-void
.end method
