.class Lcom/htc/camera/component/ThumbnailController$1;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

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
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$1;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Landroid/net/Uri;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$1;->this$0:Lcom/htc/camera/component/ThumbnailController;

    const/16 v1, 0x271a

    iget-object v4, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x1

    move v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    .line 116
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 111
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
