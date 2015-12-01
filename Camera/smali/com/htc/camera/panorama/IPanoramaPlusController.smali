.class public abstract Lcom/htc/camera/panorama/IPanoramaPlusController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IPanoramaPlusController.java"


# instance fields
.field public final isPanoramaPlusActive:Lcom/htc/camera/property/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 34
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPanoramaPlusController.IsPanoramaPlusActive"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/panorama/IPanoramaPlusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 26
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IPanoramaPlusController.IsPanoramaPlusActive"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/panorama/IPanoramaPlusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    .line 27
    return-void
.end method
