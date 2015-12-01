.class Lcom/htc/camera/location/LocationManager$3;
.super Lcom/htc/camera/trigger/Trigger;
.source "LocationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$600(Lcom/htc/camera/location/LocationManager;)V

    .line 258
    return-void
.end method

.method protected onExit()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$800(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-virtual {v0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$900(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$3;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1000(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 268
    :cond_0
    return-void
.end method
