.class Lcom/htc/camera/component/PowerWarningUI$2;
.super Ljava/lang/Object;
.source "PowerWarningUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PowerWarningUI;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/camera/component/PowerWarningUI$2;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 136
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/PowerWarningUI$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/PowerWarningUI$2;->this$0:Lcom/htc/camera/component/PowerWarningUI;

    # getter for: Lcom/htc/camera/component/PowerWarningUI;->m_IsShown:Z
    invoke-static {v0}, Lcom/htc/camera/component/PowerWarningUI;->access$000(Lcom/htc/camera/component/PowerWarningUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 140
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    .line 141
    :cond_0
    return-void
.end method
