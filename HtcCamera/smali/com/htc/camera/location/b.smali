.class final Lcom/htc/camera/location/b;
.super Lcom/htc/camera/location/ILocationManager;
.source "LocationManagerProxy.java"


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 21
    const-string v0, "Location Manager Proxy (Camera Thread)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/location/ILocationManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public checkLocationSettings()Z
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "called from CameraThread component, get UI Component instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 36
    invoke-super {p0, p1}, Lcom/htc/camera/location/ILocationManager;->handleMessage(Landroid/os/Message;)V

    .line 39
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/location/b;->location:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/location/b;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/htc/camera/location/ILocationManager;->initializeOverride()V

    .line 51
    const-class v0, Lcom/htc/camera/location/LocationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/location/b;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/location/LocationManager;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/htc/camera/location/b;->location:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/location/b;->propertyOwnerKey:Ljava/lang/Object;

    iget-object v0, v0, Lcom/htc/camera/location/LocationManager;->location:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public startLocationSettings()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "called from CameraThread component, get UI Component instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
