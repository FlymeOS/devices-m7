.class final Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;
.super Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3979
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _getAtr()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4051
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 4052
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4053
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4061
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4055
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4056
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4058
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_2

    .line 4059
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4061
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4063
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doGetAtr(I)[B

    move-result-object v0

    return-object v0
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3988
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3989
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3990
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 3981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3982
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3983
    return-object v0
.end method


# virtual methods
.method public getAtr(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4035
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 4040
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->_getAtr()[B

    move-result-object v1

    .line 4041
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 4042
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4046
    .end local v1    # "out":[B
    :goto_0
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAtr result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    return-object v2

    .line 4043
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 4044
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public getSecureElementTechList(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4011
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 4012
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doGetSecureElementTechList()I

    move-result v0

    return v0
.end method

.method public getSecureElementUid(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4017
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 4018
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getSecureElementUid()[B

    move-result-object v0

    return-object v0
.end method

.method public jcopOsDownload(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4024
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 4025
    const/4 v1, 0x0

    .line 4026
    .local v1, "status":I
    const-string v2, "NfcService"

    const-string v3, "Starting getChipName"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getChipVer()I

    move-result v0

    .line 4028
    .local v0, "Ver":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 4029
    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->JCOSDownload()I

    move-result v1

    .line 4031
    :cond_0
    return v1
.end method

.method public reset(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3995
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3998
    const/4 v2, 0x0

    .line 4000
    .local v2, "stat":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->_nfcEeReset()Z

    move-result v2

    .line 4001
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4005
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    return v2

    .line 4002
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 4003
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/NfcService$NxpNfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method
