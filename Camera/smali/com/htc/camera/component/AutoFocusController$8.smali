.class Lcom/htc/camera/component/AutoFocusController$8;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$8;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$8;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->cancelAllAutoFocus()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1300(Lcom/htc/camera/component/AutoFocusController;)V

    .line 888
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$8;->this$0:Lcom/htc/camera/component/AutoFocusController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/component/AutoFocusController;->m_IsAutoFocusLockedPropertySynced:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/AutoFocusController;->access$1402(Lcom/htc/camera/component/AutoFocusController;Z)Z

    .line 889
    return-void
.end method
