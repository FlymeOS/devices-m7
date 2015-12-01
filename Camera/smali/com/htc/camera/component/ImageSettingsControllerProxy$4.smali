.class Lcom/htc/camera/component/ImageSettingsControllerProxy$4;
.super Ljava/lang/Object;
.source "ImageSettingsControllerProxy.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x271a

    .line 182
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # getter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$000(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$002(Lcom/htc/camera/component/ImageSettingsControllerProxy;Z)Z

    .line 187
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # getter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$100(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Lcom/htc/camera/manualcapture/IManualCaptureController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    # getter for: Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;
    invoke-static {v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->access$100(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Lcom/htc/camera/manualcapture/IManualCaptureController;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;->this$0:Lcom/htc/camera/component/ImageSettingsControllerProxy;

    invoke-virtual {v0, v3}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->removeMessages(I)V

    goto :goto_0
.end method
