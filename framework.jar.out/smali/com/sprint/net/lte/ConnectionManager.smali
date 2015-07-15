.class public Lcom/sprint/net/lte/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/ConnectionManager$Status;,
        Lcom/sprint/net/lte/ConnectionManager$State;
    }
.end annotation


# static fields
.field private static final LTE_SERVICE:Ljava/lang/String; = "lte"

.field private static final TAG:Ljava/lang/String; = "SpcsLteConnectionManager"


# instance fields
.field private mService:Lcom/sprint/net/lte/IConnectionManager;


# direct methods
.method public constructor <init>(Lcom/sprint/net/lte/IConnectionManager;)V
    .locals 0
    .param p1, "service"    # Lcom/sprint/net/lte/IConnectionManager;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    .line 121
    return-void
.end method


# virtual methods
.method public getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;
    .locals 5

    .prologue
    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/lte/IConnectionManager;->getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;

    move-result-object v1

    .line 132
    .local v1, "info":Lcom/sprint/net/lte/ConnectionInfo;
    const-string v2, "SpcsLteConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "info":Lcom/sprint/net/lte/ConnectionInfo;
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SpcsLteConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;
    .locals 4

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/lte/IConnectionManager;->getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsLteConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 4

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/lte/IConnectionManager;->getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsLteConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationDownlink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .locals 4

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/lte/IConnectionManager;->getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsLteConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationUplink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/sprint/net/lte/ConnectionManager$State;
    .locals 4

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/lte/IConnectionManager;->getState()Lcom/sprint/net/lte/ConnectionManager$State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsLteConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;
    .locals 4

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/lte/ConnectionManager;->mService:Lcom/sprint/net/lte/IConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/lte/IConnectionManager;->getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SpcsLteConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method
