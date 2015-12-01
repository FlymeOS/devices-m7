.class Lcom/htc/camera/component/SensorFocusController$6;
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
        "Lcom/htc/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

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
            "<",
            "Lcom/htc/camera/AutoFocusMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/AutoFocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const v1, 0x3f4ccccd    # 0.8f

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$602(Lcom/htc/camera/component/SensorFocusController;F)F

    .line 357
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const/high16 v1, 0x40000000    # 2.0f

    # *= operator for: Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F
    invoke-static {v0, v1}, Lcom/htc/camera/component/SensorFocusController;->access$632(Lcom/htc/camera/component/SensorFocusController;F)F

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController$6;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/AutoFocusMode;

    # setter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v1, v0}, Lcom/htc/camera/component/SensorFocusController;->access$202(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/AutoFocusMode;)Lcom/htc/camera/AutoFocusMode;

    .line 365
    return-void
.end method
