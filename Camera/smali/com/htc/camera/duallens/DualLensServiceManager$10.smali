.class Lcom/htc/camera/duallens/DualLensServiceManager$10;
.super Ljava/lang/Object;
.source "DualLensServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

.field final synthetic val$operation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/duallens/DualLensServiceManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$10;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    iput-object p2, p0, Lcom/htc/camera/duallens/DualLensServiceManager$10;->val$operation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager$10;->this$0:Lcom/htc/camera/duallens/DualLensServiceManager;

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager$10;->val$operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/duallens/DualLensServiceManager;->setDualLensServiceState(Ljava/lang/String;)Z

    .line 469
    return-void
.end method
