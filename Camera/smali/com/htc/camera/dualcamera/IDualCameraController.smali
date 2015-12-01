.class public abstract Lcom/htc/camera/dualcamera/IDualCameraController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IDualCameraController.java"


# static fields
.field public static final PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/SupportState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cameraController:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraController;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraType:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field public final captureStyle:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final isDualCameraEnabled:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final previewAdapter:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/CameraPreviewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "DualCaptureSupportState"

    const-class v2, Lcom/htc/camera/SupportState;

    const-class v3, Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v4, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    .line 34
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "HumanJointSupportState"

    const-class v2, Lcom/htc/camera/SupportState;

    const-class v3, Lcom/htc/camera/dualcamera/IDualCameraController;

    sget-object v4, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 61
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CameraController"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    .line 62
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CameraType"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    .line 63
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CaptureStyle"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    .line 64
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.IsDualCameraEnabled"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    .line 65
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.PreviewAdapter"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    .line 66
    iget-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 51
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CameraController"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    .line 52
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CameraType"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    .line 53
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.CaptureStyle"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    .line 54
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.IsDualCameraEnabled"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    .line 55
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IDualCameraController.PreviewAdapter"

    iget-object v2, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    .line 56
    iget-object v0, p0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public abstract enter(I)V
.end method

.method public abstract exit(I)V
.end method

.method public abstract setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z
.end method
