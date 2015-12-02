.class final Lcom/htc/camera/component/ImageSettingsControllerProxy;
.super Lcom/htc/camera/IImageSettingsController;
.source "ImageSettingsControllerProxy.java"


# instance fields
.field private final m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/component/ComponentBinder",
            "<",
            "Lcom/htc/camera/IImageSettingsController;",
            "Lcom/htc/camera/component/ImageSettingsControllerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

.field private m_NeedToReset:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 46
    const-string v1, "Image Settings Controller Proxy (UI)"

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IImageSettingsController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 38
    iput-boolean v2, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z

    .line 49
    new-instance v0, Lcom/htc/camera/component/ImageSettingsControllerProxy$1;

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    const-class v3, Lcom/htc/camera/IImageSettingsController;

    iget-object v5, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ImageSettingsControllerProxy$1;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/ImageSettingsControllerProxy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/ImageSettingsControllerProxy;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Lcom/htc/camera/manualcapture/IManualCaptureController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->resetImageSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ImageSettingsControllerProxy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private linkToManualCaptureController()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$7;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/manualcapture/IManualCaptureController;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 241
    :cond_0
    return-void
.end method

.method private resetImageSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "resetImageSettings() - Manual capture is enabled, ignore image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v2, "resetImageSettings()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/ImageSettings;->createFromSettings(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/ImageSettings;

    move-result-object v3

    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_1

    .line 322
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 327
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    .line 328
    :goto_1
    if-eqz v2, :cond_2

    .line 329
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;I)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 333
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v2

    .line 334
    :goto_2
    if-eqz v2, :cond_3

    .line 335
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;I)V

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 339
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v1

    .line 340
    :cond_4
    if-eqz v1, :cond_5

    .line 341
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getAppliedImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;I)V

    .line 345
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    goto :goto_0

    :cond_6
    move v2, v1

    .line 327
    goto :goto_1

    :cond_7
    move v2, v1

    .line 333
    goto :goto_2
.end method


# virtual methods
.method public applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x271a

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - Manual capture is enabled, ignore image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - Reset image settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->removeMessages(I)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/ImageSettings;->createFromSettings(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/ImageSettings;

    move-result-object v0

    .line 103
    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/camera/ImageSettings;->copyFrom(Lcom/htc/camera/ImageSettings;IZ)V

    move-object p1, v0

    .line 106
    :cond_2
    iput-boolean v2, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_NeedToReset:Z

    .line 107
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "applyImageSettings() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->release()V

    .line 123
    invoke-super {p0}, Lcom/htc/camera/IImageSettingsController;->deinitializeOverride()V

    .line 124
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/htc/camera/IImageSettingsController;->handleMessage(Landroid/os/Message;)V

    .line 141
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->resetImageSettings()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/htc/camera/IImageSettingsController;->initializeOverride()V

    .line 153
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 154
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->linkToManualCaptureController()V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 161
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsControllerProxy$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$2;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 169
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsControllerProxy$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$3;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 177
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$4;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 195
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ImageSettingsControllerProxy$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$5;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 204
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy$6;-><init>(Lcom/htc/camera/component/ImageSettingsControllerProxy;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 216
    return-void

    .line 157
    :cond_0
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->startMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v2, "resetImageSettings() - Manual capture is enabled"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 262
    goto :goto_0
.end method

.method public lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    sget-object v2, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/manualcapture/IManualCaptureController;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v2, "resetImageSettings() - Manual capture is enabled"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IImageSettingsController;->lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v2, "lockAutoWhiteBalance() - No IImageSettingsController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 284
    goto :goto_0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/htc/camera/IImageSettingsController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 297
    instance-of v0, p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    if-eqz v0, :cond_0

    .line 299
    check-cast p1, Lcom/htc/camera/manualcapture/IManualCaptureController;

    iput-object p1, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ManualCaptureController:Lcom/htc/camera/manualcapture/IManualCaptureController;

    .line 300
    invoke-direct {p0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->linkToManualCaptureController()V

    .line 301
    const-class v0, Lcom/htc/camera/manualcapture/IManualCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ImageSettingsControllerProxy;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 303
    :cond_0
    return-void
.end method

.method public unlockAutoExposure(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoExposure(Lcom/htc/camera/Handle;)V

    .line 358
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ImageSettingsControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoExposure() - No IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
