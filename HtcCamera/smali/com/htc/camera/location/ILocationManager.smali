.class public abstract Lcom/htc/camera/location/ILocationManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ILocationManager.java"


# instance fields
.field public final location:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 28
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ILocationManager.Location"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/location/ILocationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/location/ILocationManager;->location:Lcom/htc/camera/property/Property;

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 23
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ILocationManager.Location"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/location/ILocationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/location/ILocationManager;->location:Lcom/htc/camera/property/Property;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract checkLocationSettings()Z
.end method

.method public abstract startLocationSettings()V
.end method
