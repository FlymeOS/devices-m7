.class Lcom/htc/camera/HTCCamera$28;
.super Landroid/content/BroadcastReceiver;
.source "HTCCamera.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 3303
    if-eqz p2, :cond_0

    .line 3304
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3305
    const-string v1, "com.htc.cover.closed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3306
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCoverClosed:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    # getter for: Lcom/htc/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/HTCCamera;->access$900(Lcom/htc/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3307
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->checkByPassState()V

    .line 3308
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCoverClosed:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3309
    const-string v0, "HTCCamera"

    const-string v1, "mDotMatrixReceiver activate"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$28;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->activate()V

    .line 3314
    :cond_0
    return-void
.end method
