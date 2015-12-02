.class Lcom/htc/camera/component/AutoFocusController$16;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;

.field final synthetic val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$16;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/AutoFocusController$16;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$16;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$2800(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/debug/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$16;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$16;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_TimeoutController:Lcom/htc/camera/debug/a;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$2800(Lcom/htc/camera/component/AutoFocusController;)Lcom/htc/camera/debug/a;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$16;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    iget-object v1, v1, Lcom/htc/camera/component/AutoFocusController$FocusHandle;->callbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$16;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$16;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    const/4 v2, 0x0

    # invokes: Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/AutoFocusController;->access$800(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 1232
    return-void
.end method
