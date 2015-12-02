.class Lcom/htc/camera/component/AutoFocusController$9;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 896
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1500(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reset ModeAssigned"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1300(Lcom/htc/camera/component/AutoFocusController;)V

    .line 899
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_IsFocusModeAssigned:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$1602(Lcom/htc/camera/component/AutoFocusController;Z)Z

    .line 900
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1700(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const-string v1, "caf-focus-mode"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->cancelAutoFocusDirectly()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1800(Lcom/htc/camera/component/AutoFocusController;)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_LockHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1900(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_IsAutoFocusLockedPropertySynced:Z
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1400(Lcom/htc/camera/component/AutoFocusController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_IsFocusLocking:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFocusController;->access$2002(Lcom/htc/camera/component/AutoFocusController;Z)Z

    .line 911
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_LastFocusAreas:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/camera/component/AutoFocusController;->access$300(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/AutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_IsAutoFocusLockedPropertySynced:Z
    invoke-static {v0, v3}, Lcom/htc/camera/component/AutoFocusController;->access$1402(Lcom/htc/camera/component/AutoFocusController;Z)Z

    .line 915
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFocusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$9;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_AutoFocusMoveCB:Lcom/htc/camera/h;
    invoke-static {v1}, Lcom/htc/camera/component/AutoFocusController;->access$2100(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setAutoFocusMoveCallback(Lcom/htc/camera/h;)V

    .line 916
    return-void
.end method
