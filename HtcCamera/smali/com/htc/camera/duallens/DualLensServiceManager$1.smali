.class Lcom/htc/camera/duallens/DualLensServiceManager$1;
.super Ljava/lang/Object;
.source "DualLensServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-virtual {v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 219
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$1$1;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 236
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$1;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    const/16 v2, 0x2711

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$800(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;I)Z

    .line 238
    :cond_0
    return-void
.end method
