.class Lcom/htc/lib1/hfmclient/HfmClient$1;
.super Ljava/lang/Object;
.source "HfmClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/hfmclient/HfmClient;


# direct methods
.method constructor <init>(Lcom/htc/lib1/hfmclient/HfmClient;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 418
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/htc/lib1/hfmclient/HfmClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-static {p2}, Lcom/htc/hfm/IHfmServiceHMS$Stub;->a(Landroid/os/IBinder;)Lcom/htc/hfm/IHfmServiceHMS;

    move-result-object v1

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;
    invoke-static {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->access$402(Lcom/htc/lib1/hfmclient/HfmClient;Lcom/htc/hfm/IHfmServiceHMS;)Lcom/htc/hfm/IHfmServiceHMS;

    .line 421
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$400(Lcom/htc/lib1/hfmclient/HfmClient;)Lcom/htc/hfm/IHfmServiceHMS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    const/4 v1, 0x1

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->access$302(Lcom/htc/lib1/hfmclient/HfmClient;Z)Z

    .line 424
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # invokes: Lcom/htc/lib1/hfmclient/HfmClient;->next()V
    invoke-static {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->access$500(Lcom/htc/lib1/hfmclient/HfmClient;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/htc/lib1/hfmclient/HfmClient;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IHfmService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    # getter for: Lcom/htc/lib1/hfmclient/HfmClient;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/htc/lib1/hfmclient/HfmClient;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mCurrentAction:Lcom/htc/lib1/hfmclient/HfmClient$Action;
    invoke-static {v0, v3}, Lcom/htc/lib1/hfmclient/HfmClient;->access$102(Lcom/htc/lib1/hfmclient/HfmClient;Lcom/htc/lib1/hfmclient/HfmClient$Action;)Lcom/htc/lib1/hfmclient/HfmClient$Action;

    .line 410
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mSessionId:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/lib1/hfmclient/HfmClient;->access$202(Lcom/htc/lib1/hfmclient/HfmClient;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->access$302(Lcom/htc/lib1/hfmclient/HfmClient;Z)Z

    .line 412
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmClient$1;->this$0:Lcom/htc/lib1/hfmclient/HfmClient;

    # setter for: Lcom/htc/lib1/hfmclient/HfmClient;->mIHfmService:Lcom/htc/hfm/IHfmServiceHMS;
    invoke-static {v0, v3}, Lcom/htc/lib1/hfmclient/HfmClient;->access$402(Lcom/htc/lib1/hfmclient/HfmClient;Lcom/htc/hfm/IHfmServiceHMS;)Lcom/htc/hfm/IHfmServiceHMS;

    .line 413
    return-void
.end method
