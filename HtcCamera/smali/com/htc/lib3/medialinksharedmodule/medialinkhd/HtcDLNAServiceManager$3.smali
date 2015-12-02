.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 2247
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 2251
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-static {p2}, Lcom/awox/dtcpmiddlelayer/IDTCPService$Stub;->a(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$902(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2253
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2258
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerDTCPServiceCallback mDTCPServiceCB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1000(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1000(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->registerDTCPServiceCallback(ILcom/awox/dtcpmiddlelayer/IDTCPServiceCB;)V

    .line 2261
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v0

    invoke-interface {v0}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->startDTCPServer()V

    .line 2262
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$900(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAPushMediaInfo;->getTotalFileSize()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->setFileSize(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2263
    :catch_0
    move-exception v0

    .line 2265
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 2272
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$3;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;
    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$902(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2274
    return-void
.end method
