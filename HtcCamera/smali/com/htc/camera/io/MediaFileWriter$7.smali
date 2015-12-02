.class Lcom/htc/camera/io/MediaFileWriter$7;
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
    .line 628
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$7;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$7;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$1200(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopSavingTimeoutTimer invokeAsync"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$7;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->stopSavingTimeoutTimer()V
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$1300(Lcom/htc/camera/io/MediaFileWriter;)V

    .line 634
    return-void
.end method
