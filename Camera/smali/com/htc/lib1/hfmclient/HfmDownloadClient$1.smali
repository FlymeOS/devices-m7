.class Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;
.super Landroid/content/BroadcastReceiver;
.source "HfmDownloadClient.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

.field final synthetic val$downloadcallback:Lcom/htc/lib1/hfmclient/b;


# direct methods
.method constructor <init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Lcom/htc/lib1/hfmclient/b;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    iput-object p2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;->val$downloadcallback:Lcom/htc/lib1/hfmclient/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 96
    const-string v0, "HfmDownloadClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.HTCSpeaker.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "status"

    const/16 v1, -0x63

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;->val$downloadcallback:Lcom/htc/lib1/hfmclient/b;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;->val$downloadcallback:Lcom/htc/lib1/hfmclient/b;

    invoke-virtual {v2, v1, v0}, Lcom/htc/lib1/hfmclient/b;->onDownloadFinish(ILjava/lang/String;)V

    .line 111
    :cond_1
    return-void
.end method
