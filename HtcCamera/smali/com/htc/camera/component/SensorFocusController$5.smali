.class Lcom/htc/camera/component/SensorFocusController$5;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;

.field final synthetic val$cameraActivity:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$5;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/SensorFocusController$5;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<[F>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$5;->val$cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$5;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$500(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isAccelerometerStarted is false. Return."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController$5;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/SensorFocusController;->onAccelerometerValuesChanged([F)V

    goto :goto_0
.end method
