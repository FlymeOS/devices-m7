.class Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;
.super Ljava/lang/Object;
.source "HTCManualModeInterface.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/HTCManualModeInterface;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/HTCManualModeInterface;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/HTCManualModeInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/HTCManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/HTCManualModeInterface;

    # getter for: Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->access$000(Lcom/htc/camera/manualcapture/HTCManualModeInterface;)Lcom/htc/camera/effect/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/HTCManualModeInterface;

    # getter for: Lcom/htc/camera/manualcapture/HTCManualModeInterface;->m_SceneController:Lcom/htc/camera/effect/ac;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;->access$000(Lcom/htc/camera/manualcapture/HTCManualModeInterface;)Lcom/htc/camera/effect/ac;

    move-result-object v0

    const-string v1, "manual"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 264
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 266
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 257
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/HTCManualModeInterface$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
