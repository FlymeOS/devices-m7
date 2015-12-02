.class Lcom/htc/camera/component/AutoFocusController$3;
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
    .line 181
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$3;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/AutoFocusController$3;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$3;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$3;->val$handle:Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->autoFocus(Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$1000(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;)V

    .line 186
    return-void
.end method
