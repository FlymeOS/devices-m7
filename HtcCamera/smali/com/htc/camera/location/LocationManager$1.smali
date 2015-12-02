.class Lcom/htc/camera/location/LocationManager$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/CameraMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$1;->this$0:Lcom/htc/camera/location/LocationManager;

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
            "Lcom/htc/camera/CameraMode;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/CameraMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    sget-object v1, Lcom/htc/camera/location/LocationManager$10;->$SwitchMap$com$htc$camera$CameraMode:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$1;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->startLocationUpdate()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$500(Lcom/htc/camera/location/LocationManager;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$1;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->stopLocationUpdate()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$600(Lcom/htc/camera/location/LocationManager;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
