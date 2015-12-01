.class Lcom/htc/camera/component/AutoFocusController$7;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$7;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iput-object p2, p0, Lcom/htc/camera/component/AutoFocusController$7;->val$handle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$7;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$7;->val$handle:Lcom/htc/camera/Handle;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->enableCAF(Lcom/htc/camera/Handle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$1200(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/Handle;)V

    .line 761
    return-void
.end method
