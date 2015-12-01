.class Lcom/htc/camera/location/LocationManager$6;
.super Lcom/htc/camera/trigger/Trigger;
.source "LocationManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$6;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$6;->this$0:Lcom/htc/camera/location/LocationManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/location/LocationManager;->isBlockedBySDCardDialog:Z
    invoke-static {v0, v1}, Lcom/htc/camera/location/LocationManager;->access$1602(Lcom/htc/camera/location/LocationManager;Z)Z

    .line 303
    return-void
.end method
