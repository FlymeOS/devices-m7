.class Lcom/htc/camera/component/UIRotationManager$9;
.super Lcom/htc/camera/data/Trigger;
.source "UIRotationManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$9;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$9;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$9;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # invokes: Lcom/htc/camera/component/UIRotationManager;->startOrientationListener()V
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$900(Lcom/htc/camera/component/UIRotationManager;)V

    .line 336
    :cond_0
    return-void
.end method
