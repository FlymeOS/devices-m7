.class Lcom/htc/camera/duallens/DualLensServiceManager$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "DualLensServiceManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$4;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$4;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->access$1000(Lcom/htc/camera/duallens/DualLensServiceManager;Z)V

    .line 274
    return-void
.end method
