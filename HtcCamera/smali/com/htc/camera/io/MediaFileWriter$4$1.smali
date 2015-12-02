.class Lcom/htc/camera/io/MediaFileWriter$4$1;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/io/MediaFileWriter$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter$4;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$4$1;->this$1:Lcom/htc/camera/io/MediaFileWriter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$4$1;->this$1:Lcom/htc/camera/io/MediaFileWriter$4;

    iget-object v0, v0, Lcom/htc/camera/io/MediaFileWriter$4;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->prepare(Lcom/htc/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/htc/camera/io/MediaFileWriter;->access$800(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/StorageSlot;)V

    .line 261
    return-void
.end method
