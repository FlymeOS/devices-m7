.class public abstract Lcom/htc/camera/IObjectTracker;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IObjectTracker.java"


# instance fields
.field public final detectedObjects:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final focusedObject:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final isObjectDetectionDisabledTemporarily:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final isObjectDetectionEnabled:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final numberOfDetectedFaces:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 28
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IObjectTracker.DetectedObjects"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/IObjectTracker;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    .line 29
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IObjectTracker.FocusedObject"

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/htc/camera/IObjectTracker;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IObjectTracker;->focusedObject:Lcom/htc/camera/property/Property;

    .line 30
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IObjectTracker.IsObjectDetectionDisabledTemporarily"

    iget-object v2, p0, Lcom/htc/camera/IObjectTracker;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IObjectTracker;->isObjectDetectionDisabledTemporarily:Lcom/htc/camera/property/Property;

    .line 31
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IObjectTracker.IsObjectDetectionEnabled"

    iget-object v2, p0, Lcom/htc/camera/IObjectTracker;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IObjectTracker;->isObjectDetectionEnabled:Lcom/htc/camera/property/Property;

    .line 32
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IObjectTracker.NumberOfDetectedFaces"

    iget-object v2, p0, Lcom/htc/camera/IObjectTracker;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract disableObjectDetection()Lcom/htc/camera/Handle;
.end method

.method public abstract enableObjectDetection(Lcom/htc/camera/Handle;)V
.end method

.method public abstract focusOnObject(Lcom/htc/camera/ObjectTrackingInfo;)Z
.end method
