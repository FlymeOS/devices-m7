.class Lcom/htc/camera/component/ProcessingDialogManager$1;
.super Ljava/lang/Object;
.source "ProcessingDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ProcessingDialogManager;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ProcessingDialogManager;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/camera/component/ProcessingDialogManager$1;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/ProcessingDialogManager$1;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/camera/component/ProcessingDialogManager$1;->this$0:Lcom/htc/camera/component/ProcessingDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/ProcessingDialogManager$1;->val$handle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ProcessingDialogManager;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 70
    return-void
.end method
