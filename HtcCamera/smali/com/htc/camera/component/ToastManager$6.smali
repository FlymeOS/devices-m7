.class Lcom/htc/camera/component/ToastManager$6;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;

.field final synthetic val$duration:I

.field final synthetic val$handle:Lcom/htc/camera/component/ToastManager$ToastHandle;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;Ljava/lang/String;Lcom/htc/camera/component/ToastManager$ToastHandle;I)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$6;->this$0:Lcom/htc/camera/component/ToastManager;

    iput-object p2, p0, Lcom/htc/camera/component/ToastManager$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/camera/component/ToastManager$6;->val$handle:Lcom/htc/camera/component/ToastManager$ToastHandle;

    iput p4, p0, Lcom/htc/camera/component/ToastManager$6;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$6;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_BubbleToastManager:Lcom/htc/camera/u;
    invoke-static {v0}, Lcom/htc/camera/component/ToastManager;->access$000(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/u;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$6;->val$message:Ljava/lang/String;

    sget-object v2, Lcom/htc/camera/BubbleToastPriority;->Highest:Lcom/htc/camera/BubbleToastPriority;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/camera/u;->showBubbleToast(Ljava/lang/String;Lcom/htc/camera/BubbleToastPriority;I)Lcom/htc/camera/Handle;

    move-result-object v5

    .line 318
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$6;->val$handle:Lcom/htc/camera/component/ToastManager$ToastHandle;

    iput-object v5, v0, Lcom/htc/camera/component/ToastManager$ToastHandle;->bubbleToastHandle:Lcom/htc/camera/Handle;

    .line 319
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$6;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$6;->this$0:Lcom/htc/camera/component/ToastManager;

    const/16 v2, 0x2713

    iget v4, p0, Lcom/htc/camera/component/ToastManager$6;->val$duration:I

    int-to-long v6, v4

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ToastManager;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 320
    return-void
.end method
