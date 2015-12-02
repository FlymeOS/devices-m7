.class final Lcom/htc/camera/component/bx;
.super Lcom/htc/camera/component/ProxyComponent;
.source "SettingsManagerProxy.java"

# interfaces
.implements Lcom/htc/camera/ISettingsManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ProxyComponent",
        "<",
        "Lcom/htc/camera/ISettingsManager;",
        ">;",
        "Lcom/htc/camera/ISettingsManager;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 23
    const-string v0, "Settings Manager (Proxy)"

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-class v2, Lcom/htc/camera/ISettingsManager;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/component/ProxyComponent;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;Lcom/htc/camera/component/au;Ljava/lang/Class;)V

    .line 26
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/bx;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    .line 27
    if-eqz v0, :cond_0

    .line 28
    sget-object v1, Lcom/htc/camera/component/bx;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/component/bx;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/bx;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 31
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/bx;->TAG:Ljava/lang/String;

    const-string v1, "No ISettingsManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/camera/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/htc/camera/component/bx;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/component/bx;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    .line 53
    if-nez v0, :cond_0

    .line 54
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/bx;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    sget-object v1, Lcom/htc/camera/component/bx;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/htc/camera/ISettingsManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/camera/component/ProxyComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setSettings(Lcom/htc/camera/CameraSettings;I)Lcom/htc/camera/CloseableHandle;
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/component/bx;->getTargetComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p1, p2}, Lcom/htc/camera/ISettingsManager;->setSettings(Lcom/htc/camera/CameraSettings;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/bx;->TAG:Ljava/lang/String;

    const-string v1, "setSettings() - No ISettingsManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method
