.class Lcom/htc/camera/component/SensorFocusController$14;
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
        "Lcom/htc/camera/ObjectTrackingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SensorFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SensorFocusController;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2713

    .line 519
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$200(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/AutoFocusMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$200(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/AutoFocusMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_1

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    # getter for: Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SensorFocusController;->access$1500(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No face, re-start sensor focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController$14;->this$0:Lcom/htc/camera/component/SensorFocusController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    goto :goto_0
.end method
