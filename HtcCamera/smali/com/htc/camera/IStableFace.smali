.class public abstract Lcom/htc/camera/IStableFace;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IStableFace.java"


# instance fields
.field public faceCapturedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public faceCapturingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final isStableFace:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public voiceCapturedEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public voiceCapturingEvent:Lcom/htc/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 5

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 32
    new-instance v0, Lcom/htc/camera/property/Property;

    const-string v1, "IStableFace.IsStableFace"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/camera/IStableFace;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/IStableFace;->isStableFace:Lcom/htc/camera/property/Property;

    .line 34
    iget-object v0, p0, Lcom/htc/camera/IStableFace;->isStableFace:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 35
    return-void
.end method
