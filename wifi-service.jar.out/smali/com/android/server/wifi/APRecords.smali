.class public Lcom/android/server/wifi/APRecords;
.super Ljava/lang/Object;
.source "APRecords.java"


# instance fields
.field private _avgRSSI:I

.field private _bssid:Ljava/lang/String;

.field private _cci:I

.field private _connectedTime:Ljava/lang/String;

.field private _disconnectedRSSI:Ljava/lang/String;

.field private _disconnectedReason:Ljava/lang/String;

.field private _disconnectedTime:Ljava/lang/String;

.field private _extremeRSSI:I

.field private _extreme_txrate:I

.field private _frequency:I

.field private _security:Ljava/lang/String;

.field private _ssid:Ljava/lang/String;

.field private _txPER:I

.field private _txrate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "_bssid"    # Ljava/lang/String;
    .param p2, "_txPER"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/APRecords;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 82
    iput p2, p0, Lcom/android/server/wifi/APRecords;->_txPER:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "_bssid"    # Ljava/lang/String;
    .param p2, "_avgRSSI"    # I
    .param p3, "_txrate"    # I
    .param p4, "_extremeRSSI"    # I
    .param p5, "_extreme_txrate"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/APRecords;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/server/wifi/APRecords;->_avgRSSI:I

    .line 73
    iput p3, p0, Lcom/android/server/wifi/APRecords;->_txrate:I

    .line 74
    iput p4, p0, Lcom/android/server/wifi/APRecords;->_extremeRSSI:I

    .line 75
    iput p5, p0, Lcom/android/server/wifi/APRecords;->_extreme_txrate:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_bssid"    # Ljava/lang/String;
    .param p2, "_ssid"    # Ljava/lang/String;
    .param p3, "_frequency"    # I
    .param p4, "_security"    # Ljava/lang/String;
    .param p5, "_connectedTime"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/APRecords;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/APRecords;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/APRecords;->_ssid:Ljava/lang/String;

    .line 63
    iput p3, p0, Lcom/android/server/wifi/APRecords;->_frequency:I

    .line 64
    iput-object p4, p0, Lcom/android/server/wifi/APRecords;->_security:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/server/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_bssid"    # Ljava/lang/String;
    .param p2, "_disconnectedRSSI"    # Ljava/lang/String;
    .param p3, "_disconnectedTime"    # Ljava/lang/String;
    .param p4, "_disconnectedReason"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/APRecords;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/android/server/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/android/server/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/android/server/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCCI()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_cci:I

    return v0
.end method

.method public getConnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedRSSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtremeRSSI()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_extremeRSSI:I

    return v0
.end method

.method public getExtremeTXRATE()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_extreme_txrate:I

    return v0
.end method

.method public getFREQ()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_frequency:I

    return v0
.end method

.method public getRSSI()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_avgRSSI:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/wifi/APRecords;->_security:Ljava/lang/String;

    return-object v0
.end method

.method public getTXPER()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_txPER:I

    return v0
.end method

.method public getTXRATE()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/wifi/APRecords;->_txrate:I

    return v0
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "_bssid"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_bssid:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setCCI(I)V
    .locals 0
    .param p1, "_cci"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_cci:I

    .line 129
    return-void
.end method

.method public setConnectedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "_connectedTime"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_connectedTime:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setDisconnectedRSSI(Ljava/lang/String;)V
    .locals 0
    .param p1, "_disconnectedRSSI"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_disconnectedRSSI:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setDisconnectedReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "_disconnectedReason"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_disconnectedReason:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setDisconnectedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "_disconnectedTime"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_disconnectedTime:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setExtremeRSSI(I)V
    .locals 0
    .param p1, "_extremeRSSI"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_extremeRSSI:I

    .line 214
    return-void
.end method

.method public setExtremeTXRATE(I)V
    .locals 0
    .param p1, "_extreme_txrate"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_extreme_txrate:I

    .line 150
    return-void
.end method

.method public setFREQ(I)V
    .locals 0
    .param p1, "_frequency"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_frequency:I

    .line 170
    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .param p1, "_avgRSSI"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_avgRSSI:I

    .line 204
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "_ssid"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_ssid:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .param p1, "_security"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/wifi/APRecords;->_security:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setTXPER(I)V
    .locals 0
    .param p1, "_txPER"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_txPER:I

    .line 160
    return-void
.end method

.method public setTXRATE(I)V
    .locals 0
    .param p1, "_txrate"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/server/wifi/APRecords;->_txrate:I

    .line 140
    return-void
.end method

.method public sha(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "str_source":Ljava/lang/String;
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 251
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 252
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 255
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_0

    .line 257
    aget-byte v6, v4, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 263
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_1
    return-object v6

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "WifiApDatabaseHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to Encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v6, ""

    goto :goto_1
.end method
