.class public abstract Lcom/htc/camera/ICameraMenuUI;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICameraMenuUI.java"


# instance fields
.field public final cameraMenuState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 19
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICameraMenuUI.CameraMenuState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/ICameraMenuUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    .line 21
    iget-object v0, p0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 22
    return-void
.end method
