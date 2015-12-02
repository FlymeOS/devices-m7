.class Lcom/htc/camera/io/MediaFileWriter$4;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$4;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$4;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-virtual {v0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/io/MediaFileWriter$4$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/io/MediaFileWriter$4$1;-><init>(Lcom/htc/camera/io/MediaFileWriter$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 263
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$4;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-virtual {v0}, Lcom/htc/camera/io/MediaFileWriter;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->storageMountedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/io/MediaFileWriter$4$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/io/MediaFileWriter$4$2;-><init>(Lcom/htc/camera/io/MediaFileWriter$4;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 271
    return-void
.end method
