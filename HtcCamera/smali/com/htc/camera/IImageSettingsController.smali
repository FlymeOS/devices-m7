.class public abstract Lcom/htc/camera/IImageSettingsController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IImageSettingsController.java"


# instance fields
.field public final brightness:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final contrast:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoExposureLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isSaturationSupported:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final iso:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final saturation:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final sharpness:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final whiteBalance:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 37
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.Brightness"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->brightness:Lcom/htc/camera/property/Property;

    .line 38
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.Contrast"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->contrast:Lcom/htc/camera/property/Property;

    .line 39
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.IsAutoExposureLocked"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->isAutoExposureLocked:Lcom/htc/camera/property/Property;

    .line 40
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.IsAutoWhiteBalanceLocked"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->isAutoWhiteBalanceLocked:Lcom/htc/camera/property/Property;

    .line 41
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.IsSaturationSupported"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->isSaturationSupported:Lcom/htc/camera/property/Property;

    .line 42
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.ISO"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    const-string v3, "auto"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->iso:Lcom/htc/camera/property/Property;

    .line 43
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.Saturation"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->saturation:Lcom/htc/camera/property/Property;

    .line 44
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.Sharpness"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->sharpness:Lcom/htc/camera/property/Property;

    .line 45
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IImageSettingsController.WhiteBalance"

    iget-object v2, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    const-string v3, "auto"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IImageSettingsController;->whiteBalance:Lcom/htc/camera/property/Property;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/IImageSettingsController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 63
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 64
    return-void
.end method

.method public abstract lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method

.method public abstract lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;
.end method

.method public abstract unlockAutoExposure(Lcom/htc/camera/Handle;)V
.end method

.method public abstract unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V
.end method
