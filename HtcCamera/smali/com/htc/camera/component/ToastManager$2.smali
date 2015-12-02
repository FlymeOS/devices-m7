.class Lcom/htc/camera/component/ToastManager$2;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/AutoFocusEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ToastManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/camera/component/ToastManager$2;->this$0:Lcom/htc/camera/component/ToastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p3, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/camera/component/ToastManager$2;->this$0:Lcom/htc/camera/component/ToastManager;

    iget-object v1, p0, Lcom/htc/camera/component/ToastManager$2;->this$0:Lcom/htc/camera/component/ToastManager;

    # getter for: Lcom/htc/camera/component/ToastManager;->m_CurrentHandle:Lcom/htc/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/htc/camera/component/ToastManager;->access$100(Lcom/htc/camera/component/ToastManager;)Lcom/htc/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ToastManager;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 197
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 191
    check-cast p3, Lcom/htc/camera/AutoFocusEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ToastManager$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method
