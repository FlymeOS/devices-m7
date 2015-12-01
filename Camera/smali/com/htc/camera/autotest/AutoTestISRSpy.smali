.class public Lcom/htc/camera/autotest/AutoTestISRSpy;
.super Ljava/lang/Object;
.source "AutoTestISRSpy.java"

# interfaces
.implements Lcom/htc/lib1/autotest/middleware/ISRSpy;


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

.field private mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private mEffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private mStrMethodList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/camera/HTCCamera;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v1, "AutoTestISRSpy"

    iput-object v1, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->TAG:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 29
    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    .line 31
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 32
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iput-object v3, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mStrMethodList:[Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public getAllSupportedCaptureMode()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getAllSupportedCaptureMode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 80
    iget-object v2, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v3, " "

    const-string v4, "%"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 95
    :goto_1
    return-object v0

    .line 91
    :cond_2
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getAllSupportedCaptureMode, mCaptureModeManager is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 93
    :cond_3
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getAllSupportedCaptureMode, mActivityRef is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getAllSupportedEffect()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getAllSupportedEffect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 201
    iget-object v2, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v2, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v3, " "

    const-string v4, "%"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 217
    :goto_1
    return-object v0

    .line 213
    :cond_2
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getAllSupportedEffect, mEffectManager is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 215
    :cond_3
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getAllSupportedEffect, mActivityRef is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getCameraOrientation()I
    .locals 3

    .prologue
    .line 177
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getCameraOrientation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, -0x1

    .line 181
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 183
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    const-string v1, "AutoTestISRSpy"

    const-string v2, "getCameraOrientation , mActivityRef is NULL"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentCaptureMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getCurrentCaptureMode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, ""

    .line 54
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 56
    iget-object v2, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mCaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_1
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getCurrentCaptureMode, mCaptureModeManager is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getCurrentCaptureMode, mActivityRef is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentEffect()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getCurrentEffect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, ""

    .line 123
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 125
    iget-object v2, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mEffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_1
    const-string v0, "AutoTestISRSpy"

    const-string v2, ", getCurrentEffect, mEffectManager is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_2
    const-string v0, "AutoTestISRSpy"

    const-string v2, "getCurrentEffect , mActivityRef is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getMaxZoomLevel()I
    .locals 3

    .prologue
    .line 142
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getMaxZoomLevel"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 148
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomRange:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_0
    const-string v1, "AutoTestISRSpy"

    const-string v2, "getZoomLevel , mActivityRef is NULL"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMethodList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mStrMethodList:[Ljava/lang/String;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 3

    .prologue
    .line 103
    const-string v0, "AutoTestISRSpy"

    const-string v1, "getZoomLevel"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 108
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->zoomValue:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    const-string v1, "AutoTestISRSpy"

    const-string v2, "getZoomLevel , mActivityRef is NULL"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCameraReady()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v0, "AutoTestISRSpy"

    const-string v1, "isCameraReady"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 165
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "AutoTestISRSpy"

    const-string v1, "isCameraReady , mActivityRef is NULL"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    const-string v0, "AutoTestISRSpy"

    const-string v2, "isRecording"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/htc/camera/autotest/AutoTestISRSpy;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 231
    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 231
    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "AutoTestISRSpy"

    const-string v2, "isRecording, mActivityRef is NULL"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method
