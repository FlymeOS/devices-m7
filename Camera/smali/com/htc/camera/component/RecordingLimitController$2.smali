.class Lcom/htc/camera/component/RecordingLimitController$2;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$100(Lcom/htc/camera/component/RecordingLimitController;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$100(Lcom/htc/camera/component/RecordingLimitController;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # setter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RecordingLimitController;->access$102(Lcom/htc/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 217
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$200(Lcom/htc/camera/component/RecordingLimitController;)Lcom/htc/camera/io/StorageSlot;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$300(Lcom/htc/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;
    invoke-static {v1}, Lcom/htc/camera/component/RecordingLimitController;->access$200(Lcom/htc/camera/component/RecordingLimitController;)Lcom/htc/camera/io/StorageSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # setter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;
    invoke-static {v0, v2}, Lcom/htc/camera/component/RecordingLimitController;->access$202(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/io/StorageSlot;)Lcom/htc/camera/io/StorageSlot;

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$2;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # getter for: Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/htc/camera/component/RecordingLimitController;->access$300(Lcom/htc/camera/component/RecordingLimitController;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 210
    check-cast p3, Lcom/htc/camera/MediaEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/RecordingLimitController$2;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaEventArgs;)V

    return-void
.end method
