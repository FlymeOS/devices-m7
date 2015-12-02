.class final Lcom/htc/camera/location/LocationManager;
.super Lcom/htc/camera/location/ILocationManager;
.source "LocationManager.java"


# instance fields
.field private isBlockedBySDCardDialog:Z

.field private final m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

.field private m_LocationManagerToastHandle:Lcom/htc/camera/Handle;

.field private m_Proxy:Lcom/htc/camera/location/b;

.field private m_SysLocationManager:Landroid/location/LocationManager;

.field private toastManager:Lcom/htc/camera/ak;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "Location Manager"

    invoke-direct {p0, v0, v3, p1, v3}, Lcom/htc/camera/location/ILocationManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 47
    iput-boolean v3, p0, Lcom/htc/camera/location/LocationManager;->isBlockedBySDCardDialog:Z

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/location/LocationManager$LocationListener;

    new-instance v1, Lcom/htc/camera/location/LocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/location/LocationManager$LocationListener;-><init>(Lcom/htc/camera/location/LocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/location/LocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/htc/camera/location/LocationManager$LocationListener;-><init>(Lcom/htc/camera/location/LocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->updateLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->onGeoTaggingEnabled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/ak;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationManagerToastHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->checkGeoTaggingStatus()V

    return-void
.end method

.method static synthetic access$1602(Lcom/htc/camera/location/LocationManager;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/camera/location/LocationManager;->isBlockedBySDCardDialog:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->startLocationUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method private checkGeoTaggingStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "geotag_check_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isGeoTagDialogShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private linkToProxy()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    sget-object v0, Lcom/htc/camera/location/LocationManager;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/location/LocationManager;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v3, :cond_0

    .line 324
    :goto_0
    return v2

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    if-eqz v0, :cond_1

    move v2, v1

    .line 322
    goto :goto_0

    .line 323
    :cond_1
    const-class v0, Lcom/htc/camera/location/b;

    invoke-virtual {p0, v0}, Lcom/htc/camera/location/LocationManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/location/b;

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    .line 324
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private onGeoTaggingEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "geotag_check_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->isGeoTagDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/location/LocationManager;->isBlockedBySDCardDialog:Z

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->showGpsDialog()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->startLocationUpdate()V

    .line 350
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/location/LocationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;

    .line 353
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->toastManager:Lcom/htc/camera/ak;

    const v1, 0x7f08029c

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationManagerToastHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "onGeoTaggingEnabled() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastKnownLocation()V
    .locals 14

    .prologue
    const-wide/32 v12, 0xf4240

    const-wide/32 v10, 0x2bf20

    const/16 v2, 0x2711

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 430
    .line 434
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 435
    if-eqz v5, :cond_5

    .line 436
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    div-long/2addr v6, v12

    sub-long/2addr v0, v6

    move-wide v6, v0

    .line 438
    :goto_0
    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    cmp-long v0, v6, v10

    if-gez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->location:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 441
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->linkToProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/location/LocationManager;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use GPS lastKnownLocation elapse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ms),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_1
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "skip GPS lastKnownLocation, elapse(ms):"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 452
    if-eqz v5, :cond_4

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    div-long/2addr v6, v12

    sub-long/2addr v0, v6

    move-wide v6, v0

    .line 455
    :goto_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    cmp-long v0, v6, v10

    if-gez v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->location:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->linkToProxy()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/location/LocationManager;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use NETWORK lastKnownLocation elapse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(ms),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "skip NETWORK lastKnownLocation, elapse(ms):"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-wide v6, v8

    goto :goto_2

    :cond_5
    move-wide v6, v8

    goto/16 :goto_0
.end method

.method private showGpsDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 367
    new-instance v0, Lcom/htc/camera/Reference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/Reference;-><init>(Ljava/lang/Object;)V

    .line 368
    new-instance v1, Lcom/htc/camera/location/LocationManager$7;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/location/LocationManager$7;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;)V

    .line 379
    new-instance v2, Lcom/htc/camera/Reference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/camera/Reference;-><init>(Ljava/lang/Object;)V

    .line 380
    new-instance v3, Lcom/htc/camera/location/LocationManager$8;

    invoke-direct {v3, p0, v2}, Lcom/htc/camera/location/LocationManager$8;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;)V

    .line 391
    new-instance v4, Lcom/htc/camera/location/LocationManager$9;

    invoke-direct {v4, p0, v0, v2}, Lcom/htc/camera/location/LocationManager$9;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)V

    .line 404
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08036e

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f08036f

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0800fb

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    move-result-object v2

    .line 412
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/location/LocationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    .line 414
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/camera/IRotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/htc/camera/Handle;

    .line 416
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    .line 417
    invoke-virtual {v1, v5}, Lcom/htc/camera/CameraApplication;->setIsGeoTagDialogShown(Z)V

    .line 418
    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/htc/camera/IRotateDialogManager;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iput-boolean v5, p0, Lcom/htc/camera/location/LocationManager;->isBlockedBySDCardDialog:Z

    .line 423
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "resetToDefault() - Cannot find IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startLocationUpdate()V
    .locals 7

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate() - Camera mode is not Photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate() - Geo-tagging is disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate() - Location update is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate() - Activity is paused, return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 523
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startLocationUpdate() - Cannot get system location manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Cannot get system location manager"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 529
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->setLastKnownLocation()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    aget-object v5, v0, v6

    .line 541
    invoke-virtual {v5}, Lcom/htc/camera/location/LocationManager$LocationListener;->getProviderName()Ljava/lang/String;

    move-result-object v1

    .line 542
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v2, "startLocationUpdate() - Setup location listener for provider \'"

    const-string v3, "\'"

    invoke-static {v0, v2, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 547
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x7530

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 538
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 550
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLocationUpdate() - Provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 552
    :catch_1
    move-exception v0

    .line 554
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLocationUpdate() - Cannot setup listener for provider \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private stopLocationUpdate()V
    .locals 4

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "stopLocationUpdate()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "stopLocationUpdate() - Location update is already stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    aget-object v0, v0, v1

    .line 579
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 580
    invoke-virtual {v0}, Lcom/htc/camera/location/LocationManager$LocationListener;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 582
    :catch_0
    move-exception v0

    .line 584
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v3, "stopLocationUpdate() - Error occurs"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 587
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_SysLocationManager:Landroid/location/LocationManager;

    .line 590
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->updateLocation()V

    goto :goto_0
.end method

.method private updateLocation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 599
    const/4 v1, 0x0

    move v0, v3

    .line 600
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 602
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->m_LocationListeners:[Lcom/htc/camera/location/LocationManager$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/camera/location/LocationManager$LocationListener;->getLatestLocation()Landroid/location/Location;

    move-result-object v5

    .line 603
    if-eqz v5, :cond_1

    .line 609
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "updateLocation() - New location : "

    invoke-static {v0, v1, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager;->location:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 615
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->linkToProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/location/LocationManager;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 617
    :cond_0
    return-void

    .line 600
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v1

    goto :goto_1
.end method


# virtual methods
.method public checkLocationSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 187
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 187
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    iget-object v2, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v3, "checkLocationSetting() - Error"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 193
    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager;->m_Proxy:Lcom/htc/camera/location/b;

    .line 210
    invoke-super {p0}, Lcom/htc/camera/location/ILocationManager;->deinitializeOverride()V

    .line 211
    return-void
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 220
    invoke-super {p0}, Lcom/htc/camera/location/ILocationManager;->initializeOverride()V

    .line 223
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 224
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/location/LocationManager$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/location/LocationManager$1;-><init>(Lcom/htc/camera/location/LocationManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 240
    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/location/LocationManager$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/location/LocationManager$2;-><init>(Lcom/htc/camera/location/LocationManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 252
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/location/LocationManager$3;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/location/LocationManager$3;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/location/LocationManager$4;

    const-string v3, "Settings.IsGeoTaggingEnabled"

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/location/LocationManager$4;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 288
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/location/LocationManager$5;

    iget-object v3, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/location/LocationManager$5;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/location/LocationManager$6;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/location/LocationManager$6;-><init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->checkLocationSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public startLocationSettings()V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 479
    iget-object v1, p0, Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;

    const-string v2, "showGpsDialog() - Cannot start location settings"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
