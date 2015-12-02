.class public abstract Lcom/htc/camera/capturemode/CaptureMode;
.super Lcom/htc/camera/base/BaseObject;
.source "CaptureMode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final canChangeDefaultSettings:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultCameraMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/photopattern/PhotoBoothPattern;",
            ">;"
        }
    .end annotation
.end field

.field public final isDualCameraMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isFlashSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoBoothMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoModeSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isPhotoSceneSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoModeSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isVideoSceneSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isZoeMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private final m_CameraThread:Lcom/htc/camera/CameraThread;

.field private m_CustomSettings:Lcom/htc/camera/CameraSettings;

.field private m_EffectContext:Lcom/htc/camera/effect/EffectContext;

.field private m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_IsCustomSettingsChecked:Z

.field private m_IsFlashDisabled:Z

.field private final m_Name:Ljava/lang/String;

.field private final m_PreferredSettingsName:Ljava/lang/String;

.field private final m_PrivatePropertyOwnerKey:Ljava/lang/Object;

.field public final needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final panoramaType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/panorama/PanoramaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final propertyOwnerKey:Ljava/lang/Object;

.field public final splitCaptureType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/splitcapture/SplitCaptureType;",
            ">;"
        }
    .end annotation
.end field

.field public final state:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode$State;",
            ">;"
        }
    .end annotation
.end field

.field public final stateChangedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final use3DPreviewRendering:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p1, Lcom/htc/camera/capturemode/CaptureMode;->m_Name:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0, v0, v1, p2}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->canChangeDefaultSettings:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->canChangeDefaultSettings:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoBoothMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoBoothMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/capturemode/CaptureMode;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 124
    invoke-direct {p0}, Lcom/htc/camera/base/BaseObject;-><init>()V

    .line 79
    new-instance v0, Lcom/htc/camera/effect/EffectContext;

    invoke-direct {v0}, Lcom/htc/camera/effect/EffectContext;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PrivatePropertyOwnerKey:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    .line 126
    if-nez p2, :cond_0

    .line 128
    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/htc/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cameraActivity\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.CanChangeDefaultSettings"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->canChangeDefaultSettings:Lcom/htc/camera/property/Property;

    .line 134
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.DefaultCameraMode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->defaultCameraMode:Lcom/htc/camera/property/Property;

    .line 135
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsDualCameraMode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isDualCameraMode:Lcom/htc/camera/property/Property;

    .line 136
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsFlashSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    .line 137
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsPhotoBoothMode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoBoothMode:Lcom/htc/camera/property/Property;

    .line 138
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsPhotoModeSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    .line 139
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsPhotoSceneSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoSceneSupported:Lcom/htc/camera/property/Property;

    .line 140
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isSupported:Lcom/htc/camera/property/Property;

    .line 141
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsVideoModeSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    .line 142
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsVideoSceneSupported"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoSceneSupported:Lcom/htc/camera/property/Property;

    .line 143
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.IsZoeMode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isZoeMode:Lcom/htc/camera/property/Property;

    .line 144
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.PanoramaType"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/panorama/PanoramaType;->None:Lcom/htc/camera/panorama/PanoramaType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    .line 145
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.SplitCaptureType"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    .line 146
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.DefaultPhotoBoothPattern"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->defaultPhotoBoothPattern:Lcom/htc/camera/property/Property;

    .line 147
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.State"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PrivatePropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    .line 148
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.NeedRestartPreviewAfterEntering"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->needRestartPreviewAfterEntering:Lcom/htc/camera/property/Property;

    .line 149
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "CaptureMode.Use3DPreviewRendering"

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->use3DPreviewRendering:Lcom/htc/camera/property/Property;

    .line 152
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "CaptureMode.StateChanged"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    .line 153
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, v6}, Lcom/htc/camera/event/Event;->disableLogs(I)V

    .line 156
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_Name:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 158
    invoke-virtual {p2}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraThread:Lcom/htc/camera/CameraThread;

    .line 159
    iput-object p3, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PreferredSettingsName:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraThread:Lcom/htc/camera/CameraThread;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "No camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No camera thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureMode$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/CaptureMode$1;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/capturemode/CaptureMode$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/capturemode/CaptureMode$2;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/component/UIComponentManager;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 192
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/capturemode/CaptureMode$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/capturemode/CaptureMode$3;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 201
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureMode$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/CaptureMode$4;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/capturemode/CaptureMode;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/IFlashController;)Lcom/htc/camera/IFlashController;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/effect/EffectContext;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    return-object v0
.end method

.method private changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PrivatePropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0}, Lcom/htc/camera/event/Event;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->stateChangedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-direct {v1, p0}, Lcom/htc/camera/capturemode/CaptureModeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 219
    :cond_0
    return-void
.end method

.method private setEffectContext(Lcom/htc/camera/effect/EffectContext;)V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectContext;->getFlags()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/htc/camera/effect/IEffectManager;->setEffectContext(Lcom/htc/camera/effect/EffectContext;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    .line 505
    :cond_1
    return-void
.end method

.method private updateFlashState()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->isFlashSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState(Z)V

    .line 530
    return-void
.end method

.method private updateFlashState(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsFlashDisabled:Z

    if-ne p1, v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/IFlashController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 541
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-nez v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "updateFlashState() - No IFlashController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsFlashDisabled:Z

    .line 549
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_4

    .line 551
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 552
    iput-object v3, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 548
    goto :goto_1

    .line 555
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 558
    :cond_5
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsFlashDisabled:Z

    if-eqz v0, :cond_1

    .line 560
    iput-boolean v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsFlashDisabled:Z

    .line 561
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 564
    iput-object v3, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/htc/camera/capturemode/CaptureMode;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->clone()Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    return-object v0
.end method

.method final deleteCustomSettings()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsCustomSettingsChecked:Z

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/htc/camera/CameraSettings;->deleteAndRelease()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsCustomSettingsChecked:Z

    goto :goto_0
.end method

.method public final enter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->threadAccessCheck()V

    .line 333
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 375
    :goto_0
    return v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "enter() - Previous mode : "

    const-string v3, ", flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, p1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContext:Lcom/htc/camera/effect/EffectContext;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;->onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V

    .line 354
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 355
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "enter() - Exit mode while entering mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "enter() - Fail to enter mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_1
    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$5;->$SwitchMap$com$htc$camera$capturemode$CaptureMode$State:[I

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 372
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    :pswitch_0
    move v0, v1

    .line 375
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v3, "enter() - Fail to enter mode"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final exit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->threadAccessCheck()V

    .line 386
    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$5;->$SwitchMap$com$htc$camera$capturemode$CaptureMode$State:[I

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 392
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Next mode : "

    const-string v2, ", flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exiting:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 403
    const/4 v0, 0x0

    .line 404
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, 0x2

    .line 406
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_EffectContextHandle:Lcom/htc/camera/CloseableHandle;

    invoke-static {v1, v0}, Lcom/htc/camera/CloseableHandle;->close(Lcom/htc/camera/CloseableHandle;I)Lcom/htc/camera/CloseableHandle;

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/capturemode/CaptureMode;->onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V

    .line 418
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "exit() - Error occurred while exiting mode"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V

    .line 418
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    goto :goto_1

    .line 417
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/htc/camera/capturemode/CaptureMode;->updateFlashState()V

    .line 418
    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v1}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 417
    throw v0

    .line 386
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getCameraActivity()Lcom/htc/camera/HTCCamera;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    return-object v0
.end method

.method public final getCameraThread()Lcom/htc/camera/CameraThread;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CameraThread:Lcom/htc/camera/CameraThread;

    return-object v0
.end method

.method public final getCustomSettings()Lcom/htc/camera/CameraSettings;
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsCustomSettingsChecked:Z

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->threadAccessCheck()V

    .line 254
    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$5;->$SwitchMap$com$htc$camera$capturemode$CaptureMode$State:[I

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_IsCustomSettingsChecked:Z

    .line 264
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PreferredSettingsName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "getCustomSettings() - Capture mode is releasing or released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUserDefined()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateCustomSettings(Ljava/lang/String;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onEnter(Lcom/htc/camera/capturemode/CaptureMode;I)Z
.end method

.method protected abstract onExit(Lcom/htc/camera/capturemode/CaptureMode;I)V
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public final release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->threadAccessCheck()V

    .line 439
    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$5;->$SwitchMap$com$htc$camera$capturemode$CaptureMode$State:[I

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 447
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v1, "release() - Exit capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/htc/camera/capturemode/CaptureMode;->exit(Lcom/htc/camera/capturemode/CaptureMode;I)V

    .line 457
    :cond_1
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/CaptureMode;->onRelease()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    .line 472
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/htc/camera/CameraSettings;->release()V

    .line 475
    iput-object v3, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_CustomSettings:Lcom/htc/camera/CameraSettings;

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_PrivatePropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 483
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 484
    :goto_1
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/capturemode/CaptureMode;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 462
    :catch_0
    move-exception v0

    .line 464
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/capturemode/CaptureMode;->TAG:Ljava/lang/String;

    const-string v2, "release() - Error occurred while releasing"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-direct {p0, v1}, Lcom/htc/camera/capturemode/CaptureMode;->changeState(Lcom/htc/camera/capturemode/CaptureMode$State;)V

    throw v0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultCameraMode(Lcom/htc/camera/CameraMode;)Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method protected setEffectContextOnEnter(Lcom/htc/camera/effect/EffectContext;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/htc/camera/capturemode/CaptureMode;->setEffectContext(Lcom/htc/camera/effect/EffectContext;)V

    .line 513
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureMode;->m_Name:Ljava/lang/String;

    return-object v0
.end method

.method public updateDefaultSettings()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method
