.class Lcom/htc/camera/component/AutoFocusControllerProxy;
.super Lcom/htc/camera/IAutoFocusController;
.source "AutoFocusControllerProxy.java"


# instance fields
.field private final m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/component/ComponentBinder",
            "<",
            "Lcom/htc/camera/IAutoFocusController;",
            "Lcom/htc/camera/component/AutoFocusControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    .line 34
    const-string v1, "Auto-Focus Controller Proxy (UI)"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IAutoFocusController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 37
    new-instance v0, Lcom/htc/camera/component/AutoFocusControllerProxy$1;

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    const-class v3, Lcom/htc/camera/IAutoFocusController;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/AutoFocusControllerProxy$1;-><init>(Lcom/htc/camera/component/AutoFocusControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/AutoFocusControllerProxy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    .line 66
    return-void
.end method


# virtual methods
.method public autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/AutoFocusMode;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Lcom/htc/camera/Handle;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->isAutoFocusing:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "autoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IAutoFocusController;->cancelAutoFocus(Lcom/htc/camera/Handle;)V

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "cancelAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->release()V

    .line 107
    invoke-super {p0}, Lcom/htc/camera/IAutoFocusController;->deinitializeOverride()V

    .line 108
    return-void
.end method

.method public disableContinuousAutoFocus()Lcom/htc/camera/Handle;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/IAutoFocusController;->disableContinuousAutoFocus()Lcom/htc/camera/Handle;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "disableContinuousAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "enableContinuousAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IAutoFocusController;->lockAutoFocus(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "lockAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlockAutoFocus(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IAutoFocusController;->unlockAutoFocus(Lcom/htc/camera/Handle;)V

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "unlockAutoFocus() - No IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
