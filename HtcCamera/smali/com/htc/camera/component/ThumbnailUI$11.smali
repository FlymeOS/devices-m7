.class Lcom/htc/camera/component/ThumbnailUI$11;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailUI;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailUI$11;->this$0:Lcom/htc/camera/component/ThumbnailUI;

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
    const/4 v1, 0x0

    .line 665
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$11;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # setter for: Lcom/htc/camera/component/ThumbnailUI;->m_HasPendingClickEvent:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1402(Lcom/htc/camera/component/ThumbnailUI;Z)Z

    .line 666
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailUI$11;->this$0:Lcom/htc/camera/component/ThumbnailUI;

    # invokes: Lcom/htc/camera/component/ThumbnailUI;->showThumbnailButton(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/camera/component/ThumbnailUI;->access$1100(Lcom/htc/camera/component/ThumbnailUI;ZZ)V

    .line 667
    return-void
.end method
