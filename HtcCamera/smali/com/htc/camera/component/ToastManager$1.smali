.class Lcom/htc/camera/component/ToastManager$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$1;->this$0:Lcom/htc/camera/component/ToastManager;

    iput-object p2, p0, Lcom/htc/camera/component/ToastManager$1;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$1;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$000(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$1;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$000(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/u;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$1;->val$handle:Lcom/htc/camera/Handle;

    check-cast v0, Lcom/htc/camera/component/ToastManager$ToastHandle;

    iget-object v0, v0, Lcom/htc/camera/component/ToastManager$ToastHandle;->bubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 111
    :cond_0
    return-void
.end method
