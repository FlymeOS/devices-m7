.class Lcom/htc/camera/component/ProcessingDialogManager$3;
.super Ljava/lang/Object;
.source "ProcessingDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProcessingDialogManager;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/SessionHandle;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/SessionHandle;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$handle:Lcom/htc/camera/SessionHandle;

    iput-object p3, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$message:Ljava/lang/String;

    iput p4, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$handle:Lcom/htc/camera/SessionHandle;

    iget-object v2, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/htc/camera/component/ProcessingDialogManager$3;->val$flags:I

    # invokes: Lcom/htc/camera/component/ProcessingDialogManager;->showProcessingDialog(Lcom/htc/camera/Handle;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/component/ProcessingDialogManager;->access$300(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/Handle;Ljava/lang/String;I)V

    .line 190
    return-void
.end method
