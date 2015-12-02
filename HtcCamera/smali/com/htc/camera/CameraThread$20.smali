.class Lcom/htc/camera/CameraThread$20;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Lcom/htc/camera/io/Path;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Lcom/htc/camera/io/Path;)V
    .locals 0

    .prologue
    .line 4609
    iput-object p1, p0, Lcom/htc/camera/CameraThread$20;->this$0:Lcom/htc/camera/CameraThread;

    iput-object p3, p0, Lcom/htc/camera/CameraThread$20;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/htc/camera/CameraThread$20;->val$filePath:Lcom/htc/camera/io/Path;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4613
    iget-object v0, p0, Lcom/htc/camera/CameraThread$20;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4616
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    iget-object v0, p0, Lcom/htc/camera/CameraThread$20;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/htc/camera/io/FileUtility;->deleteFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4619
    new-instance v0, Lcom/htc/camera/MediaEventArgs;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/camera/CameraThread$20;->val$filePath:Lcom/htc/camera/io/Path;

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;Z)V

    .line 4628
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/CameraThread$20;->this$0:Lcom/htc/camera/CameraThread;

    new-instance v2, Lcom/htc/camera/CameraThread$20$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/CameraThread$20$1;-><init>(Lcom/htc/camera/CameraThread$20;Lcom/htc/camera/MediaEventArgs;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4636
    :cond_0
    return-void

    .line 4622
    :cond_1
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    new-instance v0, Lcom/htc/camera/MediaEventArgs;

    iget-object v2, p0, Lcom/htc/camera/CameraThread$20;->val$contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/camera/CameraThread$20;->val$filePath:Lcom/htc/camera/io/Path;

    sget-object v6, Lcom/htc/camera/MediaDeletionFailedReason;->Unknown:Lcom/htc/camera/MediaDeletionFailedReason;

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;ZLcom/htc/camera/MediaDeletionFailedReason;)V

    goto :goto_0
.end method
