.class Lcom/htc/camera/component/SensorFocusController$10;
.super Ljava/lang/Object;
.source "SensorFocusController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$1002(Lcom/htc/camera/component/SensorFocusController;I)I

    .line 428
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F
    invoke-static {v0, v2}, Lcom/htc/camera/component/SensorFocusController;->access$1102(Lcom/htc/camera/component/SensorFocusController;[F)[F

    .line 429
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F
    invoke-static {v0, v2}, Lcom/htc/camera/component/SensorFocusController;->access$1202(Lcom/htc/camera/component/SensorFocusController;[F)[F

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 434
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$10;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    goto :goto_0
.end method
