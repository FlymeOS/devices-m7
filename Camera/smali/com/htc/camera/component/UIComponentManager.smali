.class public final Lcom/htc/camera/component/UIComponentManager;
.super Lcom/htc/camera/component/ComponentManager;
.source "UIComponentManager.java"


# instance fields
.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_ProcessingDialogManager:Lcom/htc/camera/ab;

.field private m_RotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_SettingsManager:Lcom/htc/camera/ISettingsManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentManager;-><init>(Lcom/htc/camera/component/au;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/UIComponentManager;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/component/UIComponentManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    if-ne p1, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 48
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 80
    :goto_0
    return-object v0

    .line 51
    :cond_1
    const-class v0, Lcom/htc/camera/ISettingsManager;

    if-ne p1, v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v0, :cond_2

    .line 55
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/UIComponentManager;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v1

    aput-object v1, v0, v2

    .line 56
    const-class v1, Lcom/htc/camera/ISettingsManager;

    invoke-super {p0, v1, v0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    goto :goto_0

    .line 60
    :cond_3
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    if-ne p1, v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_4

    .line 63
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    goto :goto_0

    .line 66
    :cond_5
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-ne p1, v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v0, :cond_6

    .line 69
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    goto :goto_0

    .line 72
    :cond_7
    const-class v0, Lcom/htc/camera/ab;

    if-ne p1, v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-nez v0, :cond_8

    .line 75
    const-class v0, Lcom/htc/camera/ab;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    iput-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 76
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    goto :goto_0

    .line 79
    :cond_9
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/UIComponentManager;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v1

    aput-object v1, v0, v2

    .line 80
    invoke-super {p0, p1, v0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onComponentRemoved(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/htc/camera/component/UIComponentManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-ne v0, p1, :cond_0

    .line 92
    iput-object v1, p0, Lcom/htc/camera/component/UIComponentManager;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-ne v0, p1, :cond_1

    .line 94
    iput-object v1, p0, Lcom/htc/camera/component/UIComponentManager;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    if-ne v0, p1, :cond_2

    .line 96
    iput-object v1, p0, Lcom/htc/camera/component/UIComponentManager;->m_ProcessingDialogManager:Lcom/htc/camera/ab;

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    if-ne v0, p1, :cond_3

    .line 98
    iput-object v1, p0, Lcom/htc/camera/component/UIComponentManager;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/UIComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-ne v0, p1, :cond_4

    .line 100
    iput-object v1, p0, Lcom/htc/camera/component/UIComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 102
    :cond_4
    return-void
.end method
