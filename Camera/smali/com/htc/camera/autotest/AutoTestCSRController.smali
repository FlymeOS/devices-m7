.class public Lcom/htc/camera/autotest/AutoTestCSRController;
.super Lcom/htc/lib1/autotest/middleware/CSRController;
.source "AutoTestCSRController.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/HTCCamera;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoTestISRLockHandle:Lcom/htc/camera/Handle;

.field private mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private mEffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private mHandler:Landroid/os/Handler;

.field private mRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_Spy:Lcom/htc/camera/autotest/AutoTestISRSpy;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/autotest/middleware/CSRController;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 19
    const-string v0, "AutoTestCSRController"

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 43
    iput-object p2, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public genActionString(Lcom/htc/lib1/autotest/middleware/CSREvent;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSpy()Lcom/htc/lib1/autotest/middleware/ISRSpy;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->m_Spy:Lcom/htc/camera/autotest/AutoTestISRSpy;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/htc/camera/autotest/AutoTestISRSpy;

    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/htc/camera/autotest/AutoTestISRSpy;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->m_Spy:Lcom/htc/camera/autotest/AutoTestISRSpy;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->m_Spy:Lcom/htc/camera/autotest/AutoTestISRSpy;

    return-object v0
.end method

.method public injectEvent(Lcom/htc/lib1/autotest/middleware/CSREvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Lcom/htc/lib1/autotest/middleware/CSREvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "setCameraOrientation"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/htc/camera/autotest/AutoTestCSRController;->setCameraOrientation(I)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v1, "setZoomLevel"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/htc/camera/autotest/AutoTestCSRController;->setZoomLevel(I)V

    goto :goto_0

    .line 77
    :cond_2
    const-string v1, "setCurrentEffect"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    aget-object v0, v0, v4

    .line 79
    const-string v1, "%"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/autotest/AutoTestCSRController;->setCurrentEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    const-string v1, "setCaptureMode"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    aget-object v0, v0, v4

    .line 83
    const-string v1, "%"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/autotest/AutoTestCSRController;->setCaptureMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraOrientation(I)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "AutoTestCSRController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 97
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    .line 101
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mAutoTestISRLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mAutoTestISRLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 105
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "AutoTestISRSpy"

    invoke-static {p1}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mAutoTestISRLockHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "AutoTestCSRController"

    const-string v1, ", mRotationManager is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "AutoTestCSRController"

    const-string v1, ", setCameraOrientation mActivityRef is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCaptureMode(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    const-string v0, "AutoTestCSRController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 123
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, p1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Ljava/lang/String;)Z

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "AutoTestCSRController"

    const-string v1, ", setCaptureMode, mCaptureModeManager is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "AutoTestCSRController"

    const-string v1, "setCaptureMode , mActivityRef is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCurrentEffect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 156
    const-string v0, "AutoTestCSRController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 161
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/String;)Z

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v0, "AutoTestCSRController"

    const-string v1, ", setCurrentEffect, mEffectManager is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "AutoTestCSRController"

    const-string v1, ", setCurrentEffect, mActivityRef is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setZoomLevel(I)V
    .locals 3

    .prologue
    .line 141
    const-string v0, "AutoTestCSRController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestCSRController;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 146
    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->changeZoom(I)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "AutoTestCSRController"

    const-string v1, ", mActivityRef is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
