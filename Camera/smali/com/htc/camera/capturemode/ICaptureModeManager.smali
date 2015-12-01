.class public abstract Lcom/htc/camera/capturemode/ICaptureModeManager;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICaptureModeManager.java"


# instance fields
.field public final captureMode:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field public final captureModeChangedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureModeChangingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureModeCreatedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureModeDeletedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final captureModeList:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/capturemode/CaptureMode;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 38
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureModeManager.CaptureMode"

    iget-object v2, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    .line 39
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "ICaptureModeManager.CaptureModeList"

    iget-object v2, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    .line 40
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ICaptureModeManager.CaptureModeChanged"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangedEvent:Lcom/htc/camera/event/Event;

    .line 41
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ICaptureModeManager.CaptureModeChanging"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeChangingEvent:Lcom/htc/camera/event/Event;

    .line 42
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ICaptureModeManager.CaptureModeCreated"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeCreatedEvent:Lcom/htc/camera/event/Event;

    .line 43
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "ICaptureModeManager.CaptureModeDeleted"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeDeletedEvent:Lcom/htc/camera/event/Event;

    .line 44
    return-void
.end method


# virtual methods
.method public abstract createUserCaptureMode()V
.end method

.method public abstract deleteCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
.end method

.method public abstract setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z
.end method

.method public setCaptureMode(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No capture mode name"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 83
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/capturemode/ICaptureModeManager;->threadAccessCheck()V

    .line 72
    iget-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureModeList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_2

    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/capturemode/CaptureMode;

    .line 78
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p0, v1}, Lcom/htc/camera/capturemode/ICaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/capturemode/ICaptureModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCaptureMode() - Cannot find capture mode \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 83
    goto :goto_0
.end method
