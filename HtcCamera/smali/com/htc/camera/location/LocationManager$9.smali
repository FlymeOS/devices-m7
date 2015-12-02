.class Lcom/htc/camera/location/LocationManager$9;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;

.field final synthetic val$isCANCELClicked:Lcom/htc/camera/Reference;

.field final synthetic val$isOKClicked:Lcom/htc/camera/Reference;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$9;->this$0:Lcom/htc/camera/location/LocationManager;

    iput-object p2, p0, Lcom/htc/camera/location/LocationManager$9;->val$isOKClicked:Lcom/htc/camera/Reference;

    iput-object p3, p0, Lcom/htc/camera/location/LocationManager$9;->val$isCANCELClicked:Lcom/htc/camera/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$9;->val$isOKClicked:Lcom/htc/camera/Reference;

    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$9;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1800(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$9;->val$isCANCELClicked:Lcom/htc/camera/Reference;

    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$9;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1900(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "geotag_check_dialog"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 400
    :cond_1
    return-void
.end method
