.class Lcom/htc/camera/burst/BurstCameraBase$2;
.super Ljava/lang/Object;
.source "BurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/BurstCameraBase;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/BurstCameraBase;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$100(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Camera is closing during taking burst-shots, stop burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraBase;->stopBurstShots()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$200(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - Camera is closing, complete burst-shots directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraBase;->onResetStates()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v0, v0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase$2;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/burst/BurstCameraBase;->access$300(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    :cond_2
    return-void
.end method
