.class Lcom/htc/camera/io/MediaFileWriter$1;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/io/MediaFileWriter;


# direct methods
.method constructor <init>(Lcom/htc/camera/io/MediaFileWriter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$100(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavingFileTimeout Handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$200(Lcom/htc/camera/io/MediaFileWriter;)Lcom/htc/camera/io/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    const-class v2, Lcom/htc/camera/io/e;

    # invokes: Lcom/htc/camera/io/MediaFileWriter;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/io/MediaFileWriter;->access$300(Lcom/htc/camera/io/MediaFileWriter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/e;

    # setter for: Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;
    invoke-static {v1, v0}, Lcom/htc/camera/io/MediaFileWriter;->access$202(Lcom/htc/camera/io/MediaFileWriter;Lcom/htc/camera/io/e;)Lcom/htc/camera/io/e;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$200(Lcom/htc/camera/io/MediaFileWriter;)Lcom/htc/camera/io/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->m_SDCardUI:Lcom/htc/camera/io/e;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$200(Lcom/htc/camera/io/MediaFileWriter;)Lcom/htc/camera/io/e;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/io/MediaFileWriter$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/io/MediaFileWriter$1$1;-><init>(Lcom/htc/camera/io/MediaFileWriter$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/e;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/io/MediaFileWriter$1;->this$0:Lcom/htc/camera/io/MediaFileWriter;

    # getter for: Lcom/htc/camera/io/MediaFileWriter;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/io/MediaFileWriter;->access$500(Lcom/htc/camera/io/MediaFileWriter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSavingFileTimeout - Cannot find ISDCardUI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
