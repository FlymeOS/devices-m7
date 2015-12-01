.class Lcom/htc/camera/location/LocationManager$LocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private m_IsValid:Z

.field private m_LatestLocation:Landroid/location/Location;

.field private final m_ProviderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/location/LocationManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public final getLatestLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 88
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    # invokes: Lcom/htc/camera/location/LocationManager;->updateLocation()V
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$000(Lcom/htc/camera/location/LocationManager;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$100(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderDisabled() - Provider \'"

    iget-object v2, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is disabled"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 107
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$200(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProviderEnabled() - Provider \'"

    iget-object v2, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is enabled"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 117
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 125
    packed-switch p2, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$300(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is available"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->this$0:Lcom/htc/camera/location/LocationManager;

    # getter for: Lcom/htc/camera/location/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/location/LocationManager;->access$400(Lcom/htc/camera/location/LocationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStatusChanged() - Provider \'"

    iget-object v2, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_ProviderName:Ljava/lang/String;

    const-string v3, "\' is out of service"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_LatestLocation:Landroid/location/Location;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/location/LocationManager$LocationListener;->m_IsValid:Z

    .line 145
    return-void
.end method
