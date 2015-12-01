.class Lcom/htc/camera/HTCCamera$4;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$4;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$4;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$100(Lcom/htc/camera/HTCCamera;)Landroid/hardware/SensorManager;

    move-result-object v1

    .line 433
    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 439
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 441
    iget-object v2, p0, Lcom/htc/camera/HTCCamera$4;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mGSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/htc/camera/HTCCamera;->access$200(Lcom/htc/camera/HTCCamera;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 442
    const-string v0, "HTCCamera"

    const-string v1, "unregisterSensor() - Sensor unregistered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
