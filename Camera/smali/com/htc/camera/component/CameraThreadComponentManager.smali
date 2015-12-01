.class public final Lcom/htc/camera/component/CameraThreadComponentManager;
.super Lcom/htc/camera/component/ComponentManager;
.source "CameraThreadComponentManager.java"


# instance fields
.field private final m_PhotoCaptureHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/z;",
            ">;"
        }
    .end annotation
.end field

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SettingsManager:Lcom/htc/camera/ISettingsManager;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentManager;-><init>(Lcom/htc/camera/component/au;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_PhotoCaptureHandlers:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraThreadComponentManager;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraThread;

    .line 38
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 41
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 42
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 43
    invoke-virtual {p0, p1, v2, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/htc/camera/component/Component;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraThreadComponentManager;->getOwner()Lcom/htc/camera/component/au;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraThread;

    .line 52
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraThreadComponentManager;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    const-class v2, Lcom/htc/camera/debug/a;

    if-ne p1, v2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_0

    .line 59
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 81
    :goto_0
    return-object v0

    .line 62
    :cond_1
    const-class v2, Lcom/htc/camera/ISettingsManager;

    if-ne p1, v2, :cond_3

    .line 64
    iget-object v2, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-nez v2, :cond_2

    .line 66
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 67
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 68
    const-class v0, Lcom/htc/camera/ISettingsManager;

    invoke-super {p0, v0, v2, v1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ISettingsManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    goto :goto_0

    .line 72
    :cond_3
    const-class v2, Lcom/htc/camera/ICaptureResolutionManager;

    if-ne p1, v2, :cond_5

    .line 74
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_4

    .line 75
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-super {p0, v0}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    goto :goto_0

    .line 79
    :cond_5
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 80
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 81
    invoke-super {p0, p1, v2, v1}, Lcom/htc/camera/component/ComponentManager;->getComponent(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponents(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    const-class v0, Lcom/htc/camera/z;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/CameraThreadComponentManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_PhotoCaptureHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/ComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected onComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 102
    instance-of v0, p1, Lcom/htc/camera/z;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_PhotoCaptureHandlers:Ljava/util/ArrayList;

    check-cast p1, Lcom/htc/camera/z;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method protected onComponentRemoved(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/htc/camera/component/CameraThreadComponentManager;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-ne v0, p1, :cond_0

    .line 115
    iput-object v1, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    if-ne v0, p1, :cond_1

    .line 117
    iput-object v1, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_SettingsManager:Lcom/htc/camera/ISettingsManager;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-ne v0, p1, :cond_2

    .line 119
    iput-object v1, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 120
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/z;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentManager;->m_PhotoCaptureHandlers:Ljava/util/ArrayList;

    check-cast p1, Lcom/htc/camera/z;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_3
    return-void
.end method
