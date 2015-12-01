.class Lcom/htc/camera/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/Settings;


# direct methods
.method constructor <init>(Lcom/htc/camera/Settings;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/camera/Settings$2;->this$0:Lcom/htc/camera/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 250
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/Settings$2;->this$0:Lcom/htc/camera/Settings;

    # getter for: Lcom/htc/camera/Settings;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/camera/Settings;->access$300(Lcom/htc/camera/Settings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "shared_prefs"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/camera/Settings$2;->this$0:Lcom/htc/camera/Settings;

    # getter for: Lcom/htc/camera/Settings;->m_Name:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/camera/Settings;->access$400(Lcom/htc/camera/Settings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-settings.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/htc/camera/Settings$2;->this$0:Lcom/htc/camera/Settings;

    iget-object v1, v1, Lcom/htc/camera/Settings;->TAG:Ljava/lang/String;

    const-string v2, "deleteAndRelease() - Delete settings file \'"

    const-string v3, "\'"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Ljava/lang/String;)Z

    .line 259
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method
