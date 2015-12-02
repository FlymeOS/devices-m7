.class Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;
.super Ljava/lang/Object;
.source "BaseManualModeInterface.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraPreviewEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/BaseManualModeInterface;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraPreviewEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraPreviewEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v1, v0, v3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setColorTemperature(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    .line 124
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v1, v0, v3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setExposureCompensation(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    .line 125
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v1, v0, v3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setFocusStep(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    .line 126
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v1, v0, v3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setISOSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    .line 127
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualModeInterface;->PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    invoke-virtual {v1, v0, v3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setShutterSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    .line 128
    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->this$0:Lcom/htc/camera/manualcapture/BaseManualModeInterface;

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyCameraParameters()V

    .line 130
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 116
    check-cast p3, Lcom/htc/camera/CameraPreviewEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraPreviewEventArgs;)V

    return-void
.end method
