.class Lcom/htc/camera/location/LocationManager$8;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;

.field final synthetic val$isCANCELClicked:Lcom/htc/camera/Reference;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$8;->this$0:Lcom/htc/camera/location/LocationManager;

    iput-object p2, p0, Lcom/htc/camera/location/LocationManager$8;->val$isCANCELClicked:Lcom/htc/camera/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$8;->val$isCANCELClicked:Lcom/htc/camera/Reference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$8;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1700(Lcom/htc/camera/location/LocationManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 386
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 387
    return-void
.end method
