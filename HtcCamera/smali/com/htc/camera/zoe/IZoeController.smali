.class public abstract Lcom/htc/camera/zoe/IZoeController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IZoeController.java"


# instance fields
.field public final isRecordingMode:Lcom/htc/camera/property/a;

.field public final isSingleShotMode:Lcom/htc/camera/property/a;

.field public final isZoeActive:Lcom/htc/camera/property/a;

.field public final recordingState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;"
        }
    .end annotation
.end field

.field public final videoSnapshotState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 55
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsRecordingMode"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    .line 56
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsSingleShotMode"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    .line 57
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsZoeActive"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    .line 58
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IZoeController.RecordingState"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    .line 59
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IZoeController.VideoSnapshotState"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    .line 61
    iget-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 62
    iget-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 40
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsRecordingMode"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    .line 41
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsSingleShotMode"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isSingleShotMode:Lcom/htc/camera/property/a;

    .line 42
    new-instance v0, Lcom/htc/camera/property/a;

    const-string v1, "IZoeController.IsZoeActive"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/a;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    .line 43
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IZoeController.RecordingState"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    .line 44
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IZoeController.VideoSnapshotState"

    iget-object v2, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    .line 46
    iget-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 47
    iget-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v7}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/zoe/IZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 75
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 76
    return-void
.end method

.method public abstract enter(I)Z
.end method

.method public abstract exit(I)V
.end method
