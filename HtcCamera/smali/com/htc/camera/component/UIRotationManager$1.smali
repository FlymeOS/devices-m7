.class Lcom/htc/camera/component/UIRotationManager$1;
.super Ljava/lang/Object;
.source "UIRotationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/UIRotationManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$1;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$1;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/component/UIRotationManager;->isRunningOrInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$1;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # getter for: Lcom/htc/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$000(Lcom/htc/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$1;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # getter for: Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$100(Lcom/htc/camera/component/UIRotationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation listener enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
