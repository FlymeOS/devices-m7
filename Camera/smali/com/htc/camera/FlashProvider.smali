.class public abstract Lcom/htc/camera/FlashProvider;
.super Lcom/htc/camera/base/BaseObject;
.source "FlashProvider.java"


# static fields
.field public static final PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_IsActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "FlashMode"

    const-class v2, Lcom/htc/camera/FlashMode;

    const-class v3, Lcom/htc/camera/FlashProvider;

    sget-object v4, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/FlashProvider;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 33
    return-void
.end method


# virtual methods
.method public final activate(Lcom/htc/camera/FlashProvider;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->threadAccessCheck()V

    .line 68
    iget-boolean v1, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v2, "activate() - Already activate"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return v0

    .line 74
    :cond_0
    iput-boolean v0, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    .line 76
    invoke-virtual {p0, p1}, Lcom/htc/camera/FlashProvider;->onActivated(Lcom/htc/camera/FlashProvider;)Z

    move-result v0

    goto :goto_0
.end method

.method protected convertFromSettingsFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/htc/camera/FlashProvider;->toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected convertToSettingsFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 0

    .prologue
    .line 160
    return-object p1
.end method

.method public final deactivate()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->threadAccessCheck()V

    .line 96
    iget-boolean v0, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "deactivate() - Already deactivate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    .line 104
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->onDeactivated()V

    goto :goto_0
.end method

.method public final getCameraActivity()Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method public abstract getNextFlashMode()Lcom/htc/camera/FlashMode;
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    return v0
.end method

.method protected onActivated(Lcom/htc/camera/FlashProvider;)Z
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 81
    invoke-virtual {p0, v0}, Lcom/htc/camera/FlashProvider;->convertFromSettingsFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/FlashProvider;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v2, "onActivated() - Flash mode from settings: "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onDeactivated()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "onDeactivated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected onSetFlashMode(Lcom/htc/camera/FlashMode;)Z
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/htc/camera/FlashProvider;->toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v2, "onSetFlashMode() - Set flash mode: "

    invoke-static {v0, v2, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/htc/camera/FlashProvider;->PROPERTY_FLASH_MODE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/FlashProvider;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 143
    if-eqz v0, :cond_0

    .line 145
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {p0, v1}, Lcom/htc/camera/FlashProvider;->convertToSettingsFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 150
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "onSetFlashMode() - No camera settings"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->threadAccessCheck()V

    .line 55
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->onRelease()V

    .line 57
    invoke-super {p0}, Lcom/htc/camera/base/BaseObject;->release()V

    .line 58
    return-void
.end method

.method public final setFlashMode(Lcom/htc/camera/FlashMode;)Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/FlashProvider;->threadAccessCheck()V

    .line 123
    iget-boolean v0, p0, Lcom/htc/camera/FlashProvider;->m_IsActive:Z

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/camera/FlashProvider;->TAG:Ljava/lang/String;

    const-string v1, "setFlashMode() - Not activate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/camera/FlashProvider;->onSetFlashMode(Lcom/htc/camera/FlashMode;)Z

    move-result v0

    goto :goto_0
.end method

.method protected toValidFlashMode(Lcom/htc/camera/FlashMode;)Lcom/htc/camera/FlashMode;
    .locals 0

    .prologue
    .line 165
    return-object p1
.end method
