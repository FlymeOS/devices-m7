.class Lcom/htc/camera/component/UIRotationManager$2;
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
    .line 72
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager$2;->this$0:Lcom/htc/camera/component/UIRotationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$2;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # getter for: Lcom/htc/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$000(Lcom/htc/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$2;->this$0:Lcom/htc/camera/component/UIRotationManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/UIRotationManager;->access$202(Lcom/htc/camera/component/UIRotationManager;Z)Z

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager$2;->this$0:Lcom/htc/camera/component/UIRotationManager;

    # getter for: Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/UIRotationManager;->access$300(Lcom/htc/camera/component/UIRotationManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation listener disabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
