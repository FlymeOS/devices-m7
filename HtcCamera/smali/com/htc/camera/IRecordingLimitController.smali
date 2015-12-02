.class public abstract Lcom/htc/camera/IRecordingLimitController;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IRecordingLimitController.java"


# instance fields
.field public final recordingLimitState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingLimitState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 28
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IRecordingLimitController.RecordingLimitState"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/IRecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IRecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    .line 29
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/IRecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 41
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 42
    return-void
.end method

.method public final getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/htc/camera/IRecordingLimitController$1;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    invoke-virtual {p0}, Lcom/htc/camera/IRecordingLimitController;->getDependencyThreadType()Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/IRecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(Lcom/htc/camera/io/StorageSlot;JI)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/IRecordingLimitController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(Lcom/htc/camera/io/StorageSlot;JI)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getRemainingRecordingDuration(Lcom/htc/camera/io/StorageSlot;JI)Lcom/htc/camera/Duration;
.end method

.method public abstract getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J
.end method
