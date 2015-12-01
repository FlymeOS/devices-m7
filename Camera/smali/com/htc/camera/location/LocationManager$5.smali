.class Lcom/htc/camera/location/LocationManager$5;
.super Lcom/htc/camera/trigger/Trigger;
.source "LocationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$5;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$5;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->checkGeoTaggingStatus()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$1500(Lcom/htc/camera/location/LocationManager;)V

    .line 294
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$5;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->startLocationUpdate()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$500(Lcom/htc/camera/location/LocationManager;)V

    .line 295
    return-void
.end method
