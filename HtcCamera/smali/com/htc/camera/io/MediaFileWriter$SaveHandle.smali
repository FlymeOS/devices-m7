.class Lcom/htc/camera/io/MediaFileWriter$SaveHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "MediaFileWriter.java"


# instance fields
.field public volatile result:Lcom/htc/camera/io/FileSaveResult;

.field public final saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;


# direct methods
.method public constructor <init>(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/SaveMediaTask;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    .line 55
    const-string v0, "Save media"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->saveMediaTask:Lcom/htc/camera/io/SaveMediaTask;

    .line 57
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$SaveHandle;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->cancelSavingMedia(Lcom/htc/camera/Handle;)Z
    invoke-static {v0, p0}, Lcom/htc/camera/io/MediaFileWriter;->access$000(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/Handle;)Z

    .line 63
    return-void
.end method
