.class Lcom/htc/camera/component/AutoFocusController$4;
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
    .line 365
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$4;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/AutoFocusController$4;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$4;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$4;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/AutoFocusController;->access$800(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    .line 370
    return-void
.end method
