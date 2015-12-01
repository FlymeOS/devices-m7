.class Lcom/htc/camera/component/ThumbnailController$8;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$8;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 1084
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$8;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$8;->this$0:Lcom/htc/camera/component/ThumbnailController;

    # invokes: Lcom/htc/camera/component/ThumbnailController;->onMediaFileSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/component/ThumbnailController;->access$1200(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    .line 1089
    return-void
.end method
