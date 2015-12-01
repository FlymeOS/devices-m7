.class Lcom/htc/camera/HTCCamera$9;
.super Lcom/htc/camera/property/Property;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/property/Property",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;ILjava/lang/Object;[F)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/htc/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addChangedCallback(Lcom/htc/camera/property/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-[F>;)V"
        }
    .end annotation

    .prologue
    .line 910
    invoke-super {p0, p1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 913
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # ++operator for: Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1904(Lcom/htc/camera/HTCCamera;)I

    .line 914
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1900(Lcom/htc/camera/HTCCamera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->startAccelerometer()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$2000(Lcom/htc/camera/HTCCamera;)V

    .line 916
    :cond_0
    return-void
.end method

.method public removeChangedCallback(Lcom/htc/camera/property/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/c",
            "<-[F>;)Z"
        }
    .end annotation

    .prologue
    .line 921
    invoke-super {p0, p1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    const/4 v0, 0x0

    .line 928
    :goto_0
    return v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # --operator for: Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1906(Lcom/htc/camera/HTCCamera;)I

    .line 926
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mGSensorUsageCounter:I
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$1900(Lcom/htc/camera/HTCCamera;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$9;->this$0:Lcom/htc/camera/HTCCamera;

    # invokes: Lcom/htc/camera/HTCCamera;->stopAccelerometer()V
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$2100(Lcom/htc/camera/HTCCamera;)V

    .line 928
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
