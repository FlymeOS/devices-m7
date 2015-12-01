.class public abstract Lcom/htc/camera/manualcapture/BaseManualModeInterface;
.super Lcom/htc/camera/component/CameraComponent;
.source "BaseManualModeInterface.java"

# interfaces
.implements Lcom/htc/camera/manualcapture/IManualModeInterface;


# instance fields
.field private m_BeginUpdateParametersHandles:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 19
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->m_BeginUpdateParametersHandles:Lcom/htc/camera/s;

    .line 40
    return-void
.end method

.method private checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;",
            "Lcom/htc/camera/Rational;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    if-nez p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInputValue() - Supported list is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->isSupported(Ljava/util/List;Lcom/htc/camera/Rational;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInputValue() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSupported(Ljava/util/List;Lcom/htc/camera/Rational;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;",
            "Lcom/htc/camera/Rational;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Rational;

    .line 138
    invoke-virtual {v0, p2}, Lcom/htc/camera/Rational;->compareTo(Lcom/htc/camera/Rational;)I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSupportedList()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_COLOR_TEMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getSupportedColorTemps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_EXPOSURE_COMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getSupportedExposureComps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_FOCUS_STEPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getSupportedFocusSteps()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_ISO_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getSupportedISOSpeeds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_SHUTTER_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getSupportedShutterSpeeds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 230
    return-void
.end method


# virtual methods
.method protected abstract applyCameraParameters()V
.end method

.method protected abstract applyColorTemp(Lcom/htc/camera/Rational;Z)V
.end method

.method protected abstract applyExposureComp(Lcom/htc/camera/Rational;Z)V
.end method

.method protected abstract applyFocusStep(Lcom/htc/camera/Rational;Z)V
.end method

.method protected abstract applyISOSpeed(Lcom/htc/camera/Rational;Z)V
.end method

.method protected abstract applyShutterSpeed(Lcom/htc/camera/Rational;Z)V
.end method

.method public disableManualMode(I)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->TAG:Ljava/lang/String;

    const-string v1, "disableManualMode() - Already disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->onDisableManualMode()V

    goto :goto_0
.end method

.method public enableManualMode(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->TAG:Ljava/lang/String;

    const-string v1, "enableManualMode() - Already enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setSupportedList()V

    .line 88
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->onEnableManualMode()V

    goto :goto_0
.end method

.method protected abstract getSupportedColorTemps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSupportedExposureComps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSupportedFocusSteps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSupportedISOSpeeds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getSupportedShutterSpeeds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/Rational;",
            ">;"
        }
    .end annotation
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 115
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface$1;-><init>(Lcom/htc/camera/manualcapture/BaseManualModeInterface;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 132
    return-void
.end method

.method protected abstract onDisableManualMode()V
.end method

.method protected abstract onEnableManualMode()V
.end method

.method protected setColorTemperature(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;
    .locals 2

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    const-string v1, "ColorTemp"

    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_COLOR_TEMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyColorTemp(Lcom/htc/camera/Rational;Z)V

    .line 149
    return-object p1
.end method

.method protected setExposureCompensation(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v1, "ExposureComp"

    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_EXPOSURE_COMPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z

    .line 157
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyExposureComp(Lcom/htc/camera/Rational;Z)V

    .line 158
    return-object p1
.end method

.method protected setFocusStep(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;
    .locals 2

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v1, "FocusStep"

    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_FOCUS_STEPS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyFocusStep(Lcom/htc/camera/Rational;Z)V

    .line 166
    return-object p1
.end method

.method protected setISOSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;
    .locals 2

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    const-string v1, "ISOSpeed"

    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_ISO_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z

    .line 173
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyISOSpeed(Lcom/htc/camera/Rational;Z)V

    .line 174
    return-object p1
.end method

.method public setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->threadAccessCheck()V

    .line 192
    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_IS_MANUAL_MODE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return v1

    .line 200
    :cond_0
    const/4 v0, 0x1

    .line 201
    iget-object v2, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->m_BeginUpdateParametersHandles:Lcom/htc/camera/s;

    invoke-virtual {v2}, Lcom/htc/camera/s;->size()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->TAG:Ljava/lang/String;

    const-string v2, "setProperty() - Key:"

    const-string v3, ", value:"

    invoke-static {v1, v2, p1, v3, p2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    sget-object v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_MANUAL_COLOR_TEMP:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v1, :cond_3

    .line 208
    check-cast p2, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setColorTemperature(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    move-result-object p2

    .line 218
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/htc/camera/component/CameraComponent;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 209
    :cond_3
    sget-object v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_MANUAL_EXPOSURE_COMP:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v1, :cond_4

    .line 210
    check-cast p2, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setExposureCompensation(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    move-result-object p2

    goto :goto_1

    .line 211
    :cond_4
    sget-object v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_MANUAL_FOCUS_STEP:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v1, :cond_5

    .line 212
    check-cast p2, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setFocusStep(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    move-result-object p2

    goto :goto_1

    .line 213
    :cond_5
    sget-object v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_MANUAL_ISO_SPEED:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v1, :cond_6

    .line 214
    check-cast p2, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setISOSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    move-result-object p2

    goto :goto_1

    .line 215
    :cond_6
    sget-object v1, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_MANUAL_SHUTTER_SPEED:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v1, :cond_2

    .line 216
    check-cast p2, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p2, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->setShutterSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;

    move-result-object p2

    goto :goto_1
.end method

.method protected setShutterSpeed(Lcom/htc/camera/Rational;Z)Lcom/htc/camera/Rational;
    .locals 2

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string v1, "ShutterSpeed"

    sget-object v0, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->PROPERTY_SUPPORTED_SHUTTER_SPEEDS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->checkInputValue(Ljava/lang/String;Ljava/util/List;Lcom/htc/camera/Rational;)Z

    .line 181
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/manualcapture/BaseManualModeInterface;->applyShutterSpeed(Lcom/htc/camera/Rational;Z)V

    .line 182
    return-object p1
.end method
