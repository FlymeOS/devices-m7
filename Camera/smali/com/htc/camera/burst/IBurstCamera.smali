.class public abstract Lcom/htc/camera/burst/IBurstCamera;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IBurstCamera.java"


# instance fields
.field public final burstCameraState:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/burst/BurstCameraState;",
            ">;"
        }
    .end annotation
.end field

.field public final jpegReceivedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/imaging/JpegEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final jpegTimeoutEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final numberOfReceivedJpegs:Lcom/htc/camera/property/b;

.field public final numberOfReceivedShutters:Lcom/htc/camera/property/b;

.field public final numberOfTakenPictures:Lcom/htc/camera/property/b;

.field public final shutterReceivedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 37
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IBurstCamera.BurstCameraState"

    iget-object v2, p0, Lcom/htc/camera/burst/IBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    .line 38
    new-instance v0, Lcom/htc/camera/property/b;

    const-string v1, "IBurstCamera.NumberOfReceivedJpegs"

    iget-object v2, p0, Lcom/htc/camera/burst/IBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/b;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    .line 39
    new-instance v0, Lcom/htc/camera/property/b;

    const-string v1, "IBurstCamera.NumberOfReceivedShutters"

    iget-object v2, p0, Lcom/htc/camera/burst/IBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/b;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    .line 40
    new-instance v0, Lcom/htc/camera/property/b;

    const-string v1, "IBurstCamera.NumberOfTakenPictures"

    iget-object v2, p0, Lcom/htc/camera/burst/IBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/htc/camera/property/b;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    .line 43
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IBurstCamera.JpegReceived"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    .line 44
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IBurstCamera.JpegTimeout"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->jpegTimeoutEvent:Lcom/htc/camera/event/Event;

    .line 45
    new-instance v0, Lcom/htc/camera/event/Event;

    const-string v1, "IBurstCamera.ShutterReceived"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    .line 46
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/camera/burst/IBurstCamera;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 58
    invoke-static {p0}, Lcom/htc/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->deinitializeOverride()V

    .line 62
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract startBurstShots()Z
.end method

.method public abstract stopBurstShots()V
.end method

.method public abstract takeOneShot()Z
.end method
