.class Lcom/htc/camera/component/ProcessingDialogManager$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "ProcessingDialogManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProcessingDialogManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    # getter for: Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/component/ProcessingDialogManager;->access$000(Lcom/htc/camera/component/ProcessingDialogManager;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    # getter for: Lcom/htc/camera/component/ProcessingDialogManager;->m_CloseDialogWhenPausing:Z
    invoke-static {v0}, Lcom/htc/camera/component/ProcessingDialogManager;->access$100(Lcom/htc/camera/component/ProcessingDialogManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    # getter for: Lcom/htc/camera/component/ProcessingDialogManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ProcessingDialogManager;->access$200(Lcom/htc/camera/component/ProcessingDialogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close dialog automatically"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager$2;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    # getter for: Lcom/htc/camera/component/ProcessingDialogManager;->m_CurrentDialogHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/component/ProcessingDialogManager;->access$000(Lcom/htc/camera/component/ProcessingDialogManager;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ProcessingDialogManager;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 133
    :cond_0
    return-void
.end method
