.class Lcom/htc/camera/component/RotateDialogManager$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "RotateDialogManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$2;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$2;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$100(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$2;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/RotateDialogManager;->access$200(Lcom/htc/camera/component/RotateDialogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close dialog automatically"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$2;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$2;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    # getter for: Lcom/htc/camera/component/RotateDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/RotateDialogManager;->access$100(Lcom/htc/camera/component/RotateDialogManager;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 170
    :cond_0
    return-void
.end method
