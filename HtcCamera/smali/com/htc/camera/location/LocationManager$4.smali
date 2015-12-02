.class Lcom/htc/camera/location/LocationManager$4;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-virtual {v0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->onGeoTaggingEnabled()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1100(Lcom/htc/camera/location/LocationManager;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1200(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/ak;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->m_LocationManagerToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1300(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1200(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->m_LocationManagerToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/location/LocationManager;->access$1300(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1400(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$4;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$600(Lcom/htc/camera/location/LocationManager;)V

    goto :goto_0
.end method
