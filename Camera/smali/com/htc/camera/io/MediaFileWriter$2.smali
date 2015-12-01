.class Lcom/htc/camera/io/MediaFileWriter$2;
.super Ljava/lang/Thread;
.source "MediaFileWriter.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$2;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$2;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->writerProc()V
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$600(Lcom/htc/camera/io/MediaFileWriter;)V

    .line 125
    return-void
.end method
