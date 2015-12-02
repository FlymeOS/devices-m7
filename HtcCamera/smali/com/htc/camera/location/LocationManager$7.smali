.class Lcom/htc/camera/location/LocationManager$7;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/location/LocationManager;

.field final synthetic val$isOKClicked:Lcom/htc/camera/Reference;


# direct methods
.method constructor <init>(Lcom/htc/camera/location/LocationManager;Lcom/htc/camera/Reference;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/htc/camera/location/LocationManager$7;->this$0:Lcom/htc/camera/location/LocationManager;

    iput-object p2, p0, Lcom/htc/camera/location/LocationManager$7;->val$isOKClicked:Lcom/htc/camera/Reference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$7;->val$isOKClicked:Lcom/htc/camera/Reference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/htc/camera/location/LocationManager$7;->this$0:Lcom/htc/camera/location/LocationManager;

    invoke-virtual {v0}, Lcom/htc/camera/location/LocationManager;->startLocationSettings()V

    .line 374
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 375
    return-void
.end method
