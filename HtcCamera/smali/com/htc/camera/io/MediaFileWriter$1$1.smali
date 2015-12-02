.class Lcom/htc/camera/io/MediaFileWriter$1$1;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/io/MediaFileWriter$1;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter$1;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$1$1;->this$1:Lcom/htc/camera/io/MediaFileWriter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1$1;->this$1:Lcom/htc/camera/io/MediaFileWriter$1;

    iget-object v0, v0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$400(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSavingFileTimeout - Notify SD card performance low: Single"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1$1;->this$1:Lcom/htc/camera/io/MediaFileWriter$1;

    iget-object v0, v0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$200(Lcom/htc/camera/io/MediaFileWriter;)Lcom/htc/camera/io/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/io/e;->notifySDCardPerformanceLow()Z

    .line 101
    return-void
.end method
