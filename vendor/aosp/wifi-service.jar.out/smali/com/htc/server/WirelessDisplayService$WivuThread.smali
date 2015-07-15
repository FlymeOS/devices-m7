.class Lcom/htc/server/WirelessDisplayService$WivuThread;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WivuThread"
.end annotation


# instance fields
.field groupNumber:Ljava/lang/String;

.field nethdPid:I

.field networkInterface:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "nwif"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;

    .prologue
    .line 5861
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5857
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 5862
    iput-object p2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    .line 5863
    iput-object p3, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    .line 5864
    return-void
.end method


# virtual methods
.method public changeInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    .line 5998
    const/4 v1, -0x1

    .line 5999
    .local v1, "ret":I
    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6000
    const-string v2, "WirelessDisplayService"

    const-string v3, "changeInterface: ifname is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    :goto_0
    return-void

    .line 6002
    :cond_0
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInterface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6004
    .local v0, "inter":Ljava/lang/String;
    const-string v2, "INTERFACE"

    invoke-static {v2, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public changeInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "staBssid"    # Ljava/lang/String;

    .prologue
    .line 6010
    const/4 v1, -0x1

    .line 6011
    .local v1, "ret":I
    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6012
    const-string v2, "WirelessDisplayService"

    const-string v3, "changeInterface: ifname is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6023
    :goto_0
    return-void

    .line 6014
    :cond_0
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInterface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    if-nez p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6021
    .local v0, "inter":Ljava/lang/String;
    :goto_1
    const-string v2, "INTERFACE"

    invoke-static {v2, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 6019
    .end local v0    # "inter":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "inter":Ljava/lang/String;
    goto :goto_1
.end method

.method public enabledAAC(Z)I
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 6064
    const/4 v0, -0x1

    .line 6065
    .local v0, "ret":I
    if-eqz p1, :cond_1

    .line 6066
    const-string v1, "SUPPORT_AAC"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6070
    :goto_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu SUPPORT_AAC command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6071
    :cond_0
    return v0

    .line 6068
    :cond_1
    const-string v1, "SUPPORT_AAC"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getBssid()I
    .locals 3

    .prologue
    .line 6083
    const/4 v0, -0x1

    .line 6084
    .local v0, "ret":I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getBSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6085
    const-string v1, "BSSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6086
    return v0
.end method

.method public getDiscoveryStatus()I
    .locals 3

    .prologue
    .line 6105
    const/4 v0, -0x1

    .line 6106
    .local v0, "ret":I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDiscoveryStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6107
    const-string v1, "DISCOVERY"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6108
    return v0
.end method

.method public getDongleInfo(Ljava/lang/String;)I
    .locals 4
    .param p1, "Bssid"    # Ljava/lang/String;

    .prologue
    .line 6097
    const/4 v0, -0x1

    .line 6098
    .local v0, "ret":I
    const-string v2, "WirelessDisplayService"

    const-string v3, "getDongleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6100
    .local v1, "val":Ljava/lang/String;
    const-string v2, "PEER_GET_INFO"

    invoke-static {v2, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6101
    return v0
.end method

.method public getPID()V
    .locals 2

    .prologue
    .line 6119
    const-string v0, "PID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    return-void
.end method

.method public getPluggedStatus()I
    .locals 3

    .prologue
    .line 6112
    const/4 v0, -0x1

    .line 6113
    .local v0, "ret":I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getPluggedStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    const-string v1, "PLUGGED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6115
    return v0
.end method

.method public getSSID()I
    .locals 3

    .prologue
    .line 6090
    const/4 v0, -0x1

    .line 6091
    .local v0, "ret":I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6092
    const-string v1, "SSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6093
    return v0
.end method

.method public getWivuInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5905
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public requestDiscover()V
    .locals 4

    .prologue
    .line 6036
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu discovery command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DISCOVERY"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6037
    :cond_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu plugged command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PLUGGED"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    :cond_1
    return-void
.end method

.method public requestJoin(Z)I
    .locals 4
    .param p1, "join"    # Z

    .prologue
    .line 6053
    const/4 v0, -0x1

    .line 6054
    .local v0, "ret":I
    if-eqz p1, :cond_1

    .line 6055
    const-string v1, "JOIN"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6059
    :goto_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu join command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    :cond_0
    return v0

    .line 6057
    :cond_1
    const-string v1, "JOIN"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public requestPlugged(Z)I
    .locals 4
    .param p1, "plug"    # Z

    .prologue
    .line 6041
    const/4 v0, -0x1

    .line 6042
    .local v0, "ret":I
    if-eqz p1, :cond_1

    .line 6043
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6047
    :goto_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu plugged command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6048
    :cond_0
    return v0

    .line 6045
    :cond_1
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public requestSetMCastRoute(Ljava/lang/String;Z)I
    .locals 23
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "clearOldRoute"    # Z

    .prologue
    .line 5915
    const/4 v14, -0x1

    .line 5917
    .local v14, "ret":I
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "requestSetMCastRoute, ifname = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5919
    :cond_0
    if-nez p1, :cond_1

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 5920
    const-string v19, "WirelessDisplayService"

    const-string v20, "requestSetMCastRoute: ifname is empty"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 5993
    .end local v14    # "ret":I
    .local v15, "ret":I
    :goto_0
    return v15

    .line 5923
    .end local v15    # "ret":I
    .restart local v14    # "ret":I
    :cond_1
    const-string v19, "WirelessDisplayService"

    const-string v20, "requestSetMCastRoute: ifname is NOT empty"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    const/4 v5, 0x4

    .line 5927
    .local v5, "PrefixLength":I
    const-string v9, "224.0.0.0"

    .line 5928
    .local v9, "destAddr":Ljava/lang/String;
    const-string v6, "192.168.6.0/24"

    .line 5931
    .local v6, "Unidest":Ljava/lang/String;
    const-string v19, "network_management"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 5932
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v12

    .line 5936
    .local v12, "mNetd":Landroid/os/INetworkManagementService;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5937
    .local v8, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    new-instance v11, Landroid/net/RouteInfo;

    new-instance v19, Landroid/net/IpPrefix;

    const-string v20, "224.0.0.0/4"

    invoke-direct/range {v19 .. v20}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v11, v0, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 5939
    .local v11, "info":Landroid/net/RouteInfo;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5941
    .local v16, "unidest":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v19, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v19 .. v19}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    .line 5942
    .local v18, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v19, "dhcp.wlan0.mask"

    const-string v20, "255.255.255.255"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5943
    .local v4, "NetMask":Ljava/lang/String;
    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v19, v0

    const-string v20, "192.168.6.1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v22

    # invokes: Lcom/htc/server/WirelessDisplayService;->intToIP(I)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/htc/server/WirelessDisplayService;->access$11500(Lcom/htc/server/WirelessDisplayService;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    # invokes: Lcom/htc/server/WirelessDisplayService;->isSameSubNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v4}, Lcom/htc/server/WirelessDisplayService;->access$11600(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 5944
    const-string v6, "192.168.1.0/24"

    .line 5945
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Same subnet, add unicast routing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5948
    :cond_2
    new-instance v17, Landroid/net/RouteInfo;

    new-instance v19, Landroid/net/IpPrefix;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 5950
    .local v17, "uniinfo":Landroid/net/RouteInfo;
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "check subnet done, dongle add unicast routing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5953
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v19, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v19 .. v19}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v13

    .line 5980
    .local v13, "network":Landroid/net/Network;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v19, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 5981
    const-string v19, "WirelessDisplayService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Add Multicast Route for netHD/WiVu at Interface: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5983
    move-object/from16 v0, p1

    invoke-interface {v12, v0, v8}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5992
    :cond_3
    :goto_1
    const/4 v14, 0x0

    move v15, v14

    .line 5993
    .end local v14    # "ret":I
    .restart local v15    # "ret":I
    goto/16 :goto_0

    .line 5987
    .end local v15    # "ret":I
    .restart local v14    # "ret":I
    :catch_0
    move-exception v10

    .line 5988
    .local v10, "e":Ljava/lang/Exception;
    const-string v19, "WirelessDisplayService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public reset_lastsink()I
    .locals 4

    .prologue
    .line 6075
    const/4 v0, -0x1

    .line 6076
    .local v0, "ret":I
    const-string v1, "RESET_LASTSINK"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 6077
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu Reset Last Sink command, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    :cond_0
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 5869
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 5870
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5876
    :cond_0
    :goto_0
    return-void

    .line 5874
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectPeer(Ljava/lang/String;)V
    .locals 4
    .param p1, "staBssid"    # Ljava/lang/String;

    .prologue
    .line 5909
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectPeer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5911
    .local v0, "value":Ljava/lang/String;
    const-string v1, "PEER_SELECT"

    invoke-static {v1, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    return-void
.end method

.method public setTransmit(Z)V
    .locals 3
    .param p1, "trans"    # Z

    .prologue
    .line 6026
    if-eqz p1, :cond_1

    .line 6027
    const-string v0, "LISTEN"

    const-string v1, "VALUE=1 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    :goto_0
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu LISTEN command, transmit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    :cond_0
    return-void

    .line 6029
    :cond_1
    const-string v0, "LISTEN"

    const-string v1, "VALUE=0 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 5879
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    const-string v1, "stopThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    :cond_0
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    if-lez v0, :cond_1

    .line 5885
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuIpcExit()I

    .line 5886
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 5888
    :cond_1
    return-void
.end method

.method public transactEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 6123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6125
    .local v1, "b":Landroid/os/Bundle;
    if-eqz p1, :cond_9

    const-string v8, "STATUS"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6126
    const/4 v0, -0x1

    .line 6127
    .local v0, "arg2":I
    const-string v8, "SUCCEED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6128
    const/4 v0, 0x1

    .line 6130
    :cond_0
    const-string v8, "PID"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6131
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6132
    .local v4, "pids":[Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pids:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6133
    array-length v8, v4

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    .line 6134
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6135
    const/4 v8, 0x2

    aget-object v8, v4, v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6136
    .local v6, "res":Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 6138
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intpid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    .end local v4    # "pids":[Ljava/lang/String;
    .end local v6    # "res":Ljava/lang/String;
    :cond_1
    const-string v8, "wivu_res"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6143
    const-string v8, "DISCOVERY"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6144
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x3f

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 6159
    .local v2, "m":Landroid/os/Message;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6160
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 6236
    .end local v0    # "arg2":I
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 6145
    .restart local v0    # "arg2":I
    :cond_3
    const-string v8, "PLUGGED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6146
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x3e

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 6147
    .end local v2    # "m":Landroid/os/Message;
    :cond_4
    const-string v8, "ROTATION"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6148
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 6149
    .end local v2    # "m":Landroid/os/Message;
    :cond_5
    const-string v8, "PEER_HRTBEAT"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6150
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x41

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 6151
    .end local v2    # "m":Landroid/os/Message;
    :cond_6
    const-string v8, "PEER_GET_INFO"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 6152
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x42

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 6153
    .end local v2    # "m":Landroid/os/Message;
    :cond_7
    const-string v8, "INTERFACE"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6154
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x43

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_0

    .line 6156
    .end local v2    # "m":Landroid/os/Message;
    :cond_8
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transactEvent: unhandled event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6157
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_0

    .line 6161
    .end local v0    # "arg2":I
    .end local v2    # "m":Landroid/os/Message;
    :cond_9
    if-eqz p1, :cond_2

    .line 6162
    const-string v8, "wivu_req"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6163
    const-string v8, "WIVUSTART"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 6164
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x16

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 6233
    .restart local v2    # "m":Landroid/os/Message;
    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6234
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 6165
    .end local v2    # "m":Landroid/os/Message;
    :cond_a
    const-string v8, "WIVUSTOP"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 6166
    const-string v8, "BSSID"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 6167
    const-string v8, "BSSID="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6168
    .local v3, "mWIVUSTOP_BSSID":Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 6169
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x17

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 6175
    .end local v3    # "mWIVUSTOP_BSSID":Ljava/lang/String;
    :cond_b
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x17

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto :goto_2

    .line 6171
    .end local v2    # "m":Landroid/os/Message;
    .restart local v3    # "mWIVUSTOP_BSSID":Ljava/lang/String;
    :cond_c
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignroe WIVUSTOP, due to curDongle is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6176
    .end local v3    # "mWIVUSTOP_BSSID":Ljava/lang/String;
    :cond_d
    const-string v8, "PEER_LIST"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 6177
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x18

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6178
    .end local v2    # "m":Landroid/os/Message;
    :cond_e
    const-string v8, "PEER_ADD"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 6179
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x1b

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6180
    .end local v2    # "m":Landroid/os/Message;
    :cond_f
    const-string v8, "HRTBEAT_MISS"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 6181
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x1c

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6182
    .end local v2    # "m":Landroid/os/Message;
    :cond_10
    const-string v8, "SWUPGRADE"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 6183
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x19

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6184
    .end local v2    # "m":Landroid/os/Message;
    :cond_11
    const-string v8, "RATE_FEEDBACK"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 6185
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6186
    .local v7, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 6187
    .local v5, "rate":I
    array-length v8, v7

    const/4 v9, 0x1

    if-lt v8, v9, :cond_12

    .line 6188
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6189
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive RATE_FEEDBACK from dongle, rate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6191
    :cond_12
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x1a

    invoke-virtual {v8, v9, v10, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 6192
    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .end local v2    # "m":Landroid/os/Message;
    .end local v5    # "rate":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_13
    const-string v8, "SWITCH_MOD="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 6193
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6194
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0xf4240

    if-gt v8, v9, :cond_14

    .line 6217
    :cond_14
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 6218
    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .end local v2    # "m":Landroid/os/Message;
    .end local v7    # "values":[Ljava/lang/String;
    :cond_15
    const-string v8, "HANG"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 6219
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x1f

    const/16 v10, 0x24

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6221
    .end local v2    # "m":Landroid/os/Message;
    :cond_16
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transactEvent: unhandled event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6222
    const-string v8, "BITRATE="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 6223
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6224
    .restart local v7    # "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 6225
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    .line 6231
    .end local v7    # "values":[Ljava/lang/String;
    :cond_17
    :goto_3
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2    # "m":Landroid/os/Message;
    goto/16 :goto_2

    .line 6226
    .end local v2    # "m":Landroid/os/Message;
    :cond_18
    const-string v8, "REQ_VIDEO_I_FRAME="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 6227
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 6228
    .restart local v7    # "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 6229
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->requestVideoIFrame(I)V

    goto :goto_3
.end method

.method public wivuInit()I
    .locals 3

    .prologue
    .line 5891
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WirelessDisplayService"

    const-string v1, "wivuInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5894
    :cond_0
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 5895
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5901
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    return v0

    .line 5899
    :catch_0
    move-exception v0

    goto :goto_0
.end method
