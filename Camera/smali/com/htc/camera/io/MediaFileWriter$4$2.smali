.class Lcom/htc/camera/io/MediaFileWriter$4$2;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

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
.field final synthetic this$1:Lcom/htc/camera/io/MediaFileWriter$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter$4;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$4$2;->this$1:Lcom/htc/camera/io/MediaFileWriter$4;

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
    .line 268
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$4$2;->this$1:Lcom/htc/camera/io/MediaFileWriter$4;

    iget-object v1, v0, Lcom/htc/camera/io/MediaFileWriter$4;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->prepare(Lcom/htc/camera/io/StorageSlot;)V
    invoke-static {v1, v0}, Lcom/htc/camera/io/MediaFileWriter;->access$800(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V

    .line 269
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 264
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/io/MediaFileWriter$4$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
