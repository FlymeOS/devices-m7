.class Lcom/htc/camera/component/ToastManager$3;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$3;->this$0:Lcom/htc/camera/component/ToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$3;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$3;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ToastManager;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 208
    return-void
.end method
