.class public Lcom/sprint/net/cdma/ConnectionService;
.super Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;
.source "ConnectionService.java"


# static fields
.field private static final DBG:Z = true

.field static Property_LAST_ERROR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SpcsCdmaConnectionService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ro.ril.last.mip.error.code"

    sput-object v0, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;-><init>()V

    .line 30
    new-instance v1, Lcom/sprint/net/cdma/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/sprint/net/cdma/ConnectionService$1;-><init>(Lcom/sprint/net/cdma/ConnectionService;)V

    iput-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 58
    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 62
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 64
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sprint/net/cdma/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprint/net/cdma/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    const-string v1, "com.sprint.permission.SPRINT3G"

    const-string v2, "ConnectionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "SpcsCdmaConnectionService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method


# virtual methods
.method public getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .locals 3

    .prologue
    .line 76
    const-string v1, "+++getCdma2000Info"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info;

    .end local v0    # "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    invoke-direct {v0}, Lcom/sprint/net/cdma/Cdma2000Info;-><init>()V

    .line 83
    .restart local v0    # "ci":Lcom/sprint/net/cdma/Cdma2000Info;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setReceivePower(F)V

    .line 85
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setReceiveEcIo(F)V

    .line 86
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->setPnEnergy(F)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdma2000Info: recvPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getReceivePower()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recvEcio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getReceiveEcIo()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PnEnergy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/Cdma2000Info;->getPnEnergy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 90
    :cond_0
    const-string v1, "---getCdma2000Info"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 3

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 196
    const v0, 0x7fffffff

    .line 197
    .local v0, "eri":I
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v0

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaRoamingIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 201
    return v0
.end method

.method public getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 102
    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo;

    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .locals 4

    .prologue
    .line 112
    const-string v1, "+++getEvdoInfo"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "ei":Lcom/sprint/net/cdma/EvdoInfo;
    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo;

    .end local v0    # "ei":Lcom/sprint/net/cdma/EvdoInfo;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;-><init>(Landroid/content/Context;)V

    .line 117
    .restart local v0    # "ei":Lcom/sprint/net/cdma/EvdoInfo;
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setReceivePower(F)V

    .line 119
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setPnEnergy(F)V

    .line 120
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionService;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->setSinr(F)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvdoInfo: recvPwr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getReceivePower()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Sinr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getSinr()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PnEnergy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPnEnergy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEvdoInfo: BandClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getBandClass()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getChannel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ColorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getColorCode()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PacketError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPacketError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sprint/net/cdma/EvdoInfo;->getPn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 126
    const-string v1, "---getEvdoInfo"

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 24

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 150
    const/4 v12, 0x0

    .line 153
    .local v12, "ipAddress":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/net/cdma/ConnectionService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "connectivity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 154
    .local v2, "CM":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getAllNetworkInfo"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 155
    .local v6, "getAllNetworkInfo":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "getLinkProperties"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 156
    .local v7, "getLinkProperties":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v20, "isNetworkTypeMobile"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 158
    .local v14, "isNetworkTypeMobile":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/NetworkInfo;

    move-object/from16 v0, v19

    check-cast v0, [Landroid/net/NetworkInfo;

    move-object/from16 v17, v0

    .line 159
    .local v17, "networkInfos":[Landroid/net/NetworkInfo;
    move-object/from16 v4, v17

    .local v4, "arr$":[Landroid/net/NetworkInfo;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v15, :cond_2

    aget-object v10, v4, v9

    .line 160
    .local v10, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    .line 161
    .local v18, "networkType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 162
    .local v13, "isNetTypeMobile":Z
    if-eqz v13, :cond_3

    .line 163
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v19

    sget-object v20, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 164
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v7, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkProperties;

    .line 165
    .local v16, "lp":Landroid/net/LinkProperties;
    if-eqz v16, :cond_3

    .line 166
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9    # "i$":I
    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/InetAddress;

    .line 168
    .local v11, "ip":Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 169
    goto :goto_1

    .line 170
    .end local v11    # "ip":Ljava/net/InetAddress;
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-nez v19, :cond_3

    .line 183
    .end local v2    # "CM":Landroid/net/ConnectivityManager;
    .end local v3    # "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v4    # "arr$":[Landroid/net/NetworkInfo;
    .end local v6    # "getAllNetworkInfo":Ljava/lang/reflect/Method;
    .end local v7    # "getLinkProperties":Ljava/lang/reflect/Method;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "isNetTypeMobile":Z
    .end local v14    # "isNetworkTypeMobile":Ljava/lang/reflect/Method;
    .end local v15    # "len$":I
    .end local v16    # "lp":Landroid/net/LinkProperties;
    .end local v17    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v18    # "networkType":I
    :cond_2
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_getIpAddress: result="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 184
    return-object v12

    .line 159
    .restart local v2    # "CM":Landroid/net/ConnectivityManager;
    .restart local v4    # "arr$":[Landroid/net/NetworkInfo;
    .restart local v6    # "getAllNetworkInfo":Ljava/lang/reflect/Method;
    .restart local v7    # "getLinkProperties":Ljava/lang/reflect/Method;
    .restart local v10    # "info":Landroid/net/NetworkInfo;
    .restart local v13    # "isNetTypeMobile":Z
    .restart local v14    # "isNetworkTypeMobile":Ljava/lang/reflect/Method;
    .restart local v15    # "len$":I
    .restart local v17    # "networkInfos":[Landroid/net/NetworkInfo;
    .restart local v18    # "networkType":I
    :cond_3
    add-int/lit8 v8, v9, 0x1

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto/16 :goto_0

    .line 179
    .end local v2    # "CM":Landroid/net/ConnectivityManager;
    .end local v4    # "arr$":[Landroid/net/NetworkInfo;
    .end local v6    # "getAllNetworkInfo":Ljava/lang/reflect/Method;
    .end local v7    # "getLinkProperties":Ljava/lang/reflect/Method;
    .end local v9    # "i$":I
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v13    # "isNetTypeMobile":Z
    .end local v14    # "isNetworkTypeMobile":Ljava/lang/reflect/Method;
    .end local v15    # "len$":I
    .end local v17    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v18    # "networkType":I
    :catch_0
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_getIpAddress: error get method "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getLastMipResponce()I
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/sprint/net/cdma/ConnectionService;->enforceAccessPermission()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastMipResponce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/cdma/ConnectionService;->logi(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/sprint/net/cdma/ConnectionService;->Property_LAST_ERROR:Ljava/lang/String;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
