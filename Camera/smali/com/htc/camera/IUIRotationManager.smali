.class public abstract Lcom/htc/camera/IUIRotationManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IUIRotationManager.java"


# instance fields
.field public final deviceOrientation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final fakeRotation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public final isOrientationListenerStarted:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isRotationLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final rotation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 34
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IUIRotationManager.DeviceOrientation"

    iget-object v2, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IUIRotationManager;->deviceOrientation:Lcom/htc/camera/property/Property;

    .line 35
    new-instance v1, Lcom/htc/camera/property/Property;

    const-string v2, "IUIRotationManager.FakeRotation"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/camera/IUIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    .line 36
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IUIRotationManager.IsOrientationListenerStarted"

    iget-object v2, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IUIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    .line 37
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IUIRotationManager.IsRotationLocked"

    iget-object v2, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IUIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    .line 38
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IUIRotationManager.Rotation"

    iget-object v2, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IUIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    .line 39
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/camera/IUIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 51
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 52
    return-void
.end method

.method public abstract getAvailableDeviceOrientation()I
.end method

.method public abstract lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;
.end method

.method public abstract unlockRotation(Lcom/htc/camera/Handle;)V
.end method
