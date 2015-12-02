.class Lcom/htc/camera/zoe/ZoeUI$13;
.super Ljava/lang/Object;
.source "ZoeUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeUI;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeUI$13;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeUI$13;->this$0:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/zoe/ZoeUI;->m_SDCardValue:I
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeUI;->access$3302(Lcom/htc/camera/zoe/ZoeUI;I)I

    .line 1065
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1057
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeUI$13;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
