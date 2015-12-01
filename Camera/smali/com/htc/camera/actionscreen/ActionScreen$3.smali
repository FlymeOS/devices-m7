.class Lcom/htc/camera/actionscreen/ActionScreen$3;
.super Ljava/lang/Object;
.source "ActionScreen.java"

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
.field final synthetic this$0:Lcom/htc/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/htc/camera/actionscreen/ActionScreen;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/camera/actionscreen/ActionScreen$3;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 220
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/actionscreen/ActionScreen$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

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
    .line 223
    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$3;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget-object v0, v0, Lcom/htc/camera/actionscreen/ActionScreen;->state:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/actionscreen/ActionScreen$3;->this$0:Lcom/htc/camera/actionscreen/ActionScreen;

    iget v1, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    invoke-virtual {v0, v1, p3}, Lcom/htc/camera/actionscreen/ActionScreen;->onKeyUp(ILcom/htc/camera/input/KeyEventArgs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    .line 225
    :cond_0
    return-void
.end method
