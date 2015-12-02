.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0

    .prologue
    .line 2637
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$1;)V
    .locals 0

    .prologue
    .line 2637
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1200(Ljava/lang/String;)V

    .line 2651
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-static {p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$502(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2652
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onServiceConnected] mService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", classname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2655
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2656
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2657
    if-eqz v0, :cond_0

    .line 2658
    invoke-interface {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2659
    :cond_0
    monitor-exit v1

    .line 2707
    :goto_0
    return-void

    .line 2660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2692
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAMiddleLayerListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2693
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    const-string v2, "JPEG_SM,JPEG_TN,PNG_TN"

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z

    .line 2694
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$500(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mCookie:I
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mFilter:I
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1600(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setFilterType(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2700
    :goto_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2702
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2703
    :try_start_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2704
    if-eqz v0, :cond_2

    .line 2705
    invoke-interface {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    .line 2706
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2695
    :catch_0
    move-exception v0

    .line 2697
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1200(Ljava/lang/String;)V

    .line 2717
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onServiceDisconnected] classname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2720
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2721
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;
    invoke-static {v0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$502(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2725
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    move-result-object v0

    .line 2726
    if-eqz v0, :cond_1

    .line 2727
    invoke-interface {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2729
    :cond_1
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v2, 0x0

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1402(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2730
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    const/4 v2, 0x0

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->mDMRMirrorOutputCallback:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;
    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->access$1702(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager$DMRMirrorOutputCallback;

    .line 2731
    monitor-exit v1

    .line 2732
    return-void

    .line 2731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
