.class Lcom/htc/camera/HTCCamera$8;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$8;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$8;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    iget-object v0, p0, Lcom/htc/camera/HTCCamera$8;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/camera/HTCCamera;->access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 725
    return-void
.end method
