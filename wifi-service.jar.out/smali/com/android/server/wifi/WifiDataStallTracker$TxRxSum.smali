.class Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;
.super Ljava/lang/Object;
.source "WifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDataStallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxRxSum"
.end annotation


# instance fields
.field public rxPkts:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiDataStallTracker;

.field public txPkts:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->reset()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;JJ)V
    .locals 0
    .param p2, "txPkts"    # J
    .param p4, "rxPkts"    # J

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide p2, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    .line 181
    iput-wide p4, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 182
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;)V
    .locals 2
    .param p2, "sum"    # Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iget-wide v0, p2, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    .line 186
    iget-wide v0, p2, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 187
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 190
    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    .line 191
    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{txSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rxSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTxRxSum()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpTxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->txPkts:J

    .line 201
    invoke-static {}, Landroid/net/TrafficStats;->getWifiTcpRxPackets()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiDataStallTracker$TxRxSum;->rxPkts:J

    .line 202
    return-void
.end method
