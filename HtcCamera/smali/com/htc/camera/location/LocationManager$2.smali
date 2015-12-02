.class Lcom/htc/camera/location/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Lcom/htc/camera/CameraSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$2;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/CameraSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$2;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-virtual {v0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p3, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$2;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$700(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method
