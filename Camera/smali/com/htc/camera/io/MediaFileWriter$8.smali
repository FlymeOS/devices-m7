.class Lcom/htc/camera/io/MediaFileWriter$8;
.super Lcom/htc/camera/CloseableHandle;
.source "MediaFileWriter.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$8;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {p0, p2}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$8;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->resumeUpdatingMediaStore(Lcom/htc/camera/Handle;)V
    invoke-static {v0, p0}, Lcom/htc/camera/io/MediaFileWriter;->access$1400(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/Handle;)V

    .line 653
    return-void
.end method
