.class Lcom/htc/camera/component/RotateDialogManager$7;
.super Ljava/lang/Object;
.source "RotateDialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RotateDialogManager;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RotateDialogManager;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/htc/camera/component/RotateDialogManager$7;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iput-object p2, p0, Lcom/htc/camera/component/RotateDialogManager$7;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/camera/component/RotateDialogManager$7;->this$0:Lcom/htc/camera/component/RotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/component/RotateDialogManager$7;->val$handle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RotateDialogManager;->hideDialog(Lcom/htc/camera/Handle;)V

    .line 394
    return-void
.end method
