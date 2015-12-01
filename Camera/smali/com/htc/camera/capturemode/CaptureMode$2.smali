.class Lcom/htc/camera/capturemode/CaptureMode$2;
.super Ljava/lang/Object;
.source "CaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/component/ComponentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureMode$2;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 178
    check-cast p3, Lcom/htc/camera/component/ComponentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/capturemode/CaptureMode$2;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/component/ComponentEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ">;",
            "Lcom/htc/camera/component/ComponentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    instance-of v0, v0, Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    const-class v1, Lcom/htc/camera/IFlashController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/Component;->isInterfaceEnabled(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode$2;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, p3, Lcom/htc/camera/component/ComponentEventArgs;->component:Lcom/htc/camera/component/Component;

    check-cast v0, Lcom/htc/camera/IFlashController;

    # setter for: Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;
    invoke-static {v1, v0}, Lcom/htc/camera/capturemode/CaptureMode;->access$102(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/IFlashController;)Lcom/htc/camera/IFlashController;

    .line 185
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode$2;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    # invokes: Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureMode;->access$200(Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 187
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode$2;->this$0:Lcom/htc/camera/capturemode/CaptureMode;

    # getter for: Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureMode;->access$300(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    invoke-virtual {v0, v1, p0}, Lcom/htc/camera/component/UIComponentManager;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 189
    :cond_0
    return-void
.end method
