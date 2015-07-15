.class Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "SoftapMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot/SoftapMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot/SoftapMonitor;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    .line 113
    const-string v0, "SoftapMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private handleAssocListChange()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyAssocListChange()V

    .line 235
    return-void
.end method

.method private handleConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->notifyConnectionRequest(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private handleL2peFailEvent()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyL2peFail()V

    .line 264
    return-void
.end method

.method private handleL2peSuccessfulEvent()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "SoftapMonitor"

    const-string v1, "L2PE: SoftapMonitor@handleL2peSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyL2peSuccessful()V

    .line 260
    return-void
.end method

.method private handleWpsRegistrarFailEvent()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarFailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyWpsRegistrarFail()V

    .line 255
    return-void
.end method

.method private handleWpsRegistrarStartEvent()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarStartEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyWpsRegistrarStart()V

    .line 247
    return-void
.end method

.method private handleWpsRegistrarSuccessfulEvent()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "SoftapMonitor"

    const-string v1, "SoftapMonitor@handleWpsRegistrarSuccessfulEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->notifyWpsRegistrarSuccessful()V

    .line 251
    return-void
.end method

.method private nap(I)V
    .locals 2
    .param p1, "secs"    # I

    .prologue
    .line 275
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 116
    const-string v6, "SoftapMonitor"

    const-string v7, "Start waiting Hotspot event"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->waitForEvent()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "eventStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 121
    const-string v6, "SoftapMonitor"

    const-string v7, "HotspotNative.waitForEvent() return NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v6, 0x5

    invoke-direct {p0, v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->nap(I)V

    .line 123
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # ++operator for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$004(Lcom/android/server/wifi/hotspot/SoftapMonitor;)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_0

    .line 124
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many NULL EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 228
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$102(Lcom/android/server/wifi/hotspot/SoftapMonitor;I)I

    .line 229
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$002(Lcom/android/server/wifi/hotspot/SoftapMonitor;I)I

    .line 230
    return-void

    .line 131
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # setter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mNullErrors:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$002(Lcom/android/server/wifi/hotspot/SoftapMonitor;I)I

    .line 133
    const-string v6, "AP_UP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    const/4 v0, 0x1

    .line 135
    .local v0, "event":I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_UP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "event":I
    :cond_2
    const-string v6, "AP_DOWN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 137
    const/4 v0, 0x2

    .line 138
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 139
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    .line 140
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", AP_DOWN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    .end local v0    # "event":I
    :cond_3
    const-string v6, "STA_JOIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "AP-STA-CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    :cond_4
    const/4 v0, 0x3

    .line 144
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 145
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_JOIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 146
    .end local v0    # "event":I
    :cond_5
    const-string v6, "STA_LEAVE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "AP-STA-DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 147
    :cond_6
    const/4 v0, 0x4

    .line 148
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 149
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_LEAVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    .end local v0    # "event":I
    :cond_7
    const-string v6, "STA_BLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 151
    const/4 v0, 0x5

    .line 153
    .restart local v0    # "event":I
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 154
    .local v3, "ind":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_8

    .line 155
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "eventData":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 157
    .local v4, "time":J
    invoke-direct {p0, v1}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleConnectionRequest(Ljava/lang/String;)V

    .line 159
    .end local v1    # "eventData":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_8
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", STA_BLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    .end local v0    # "event":I
    .end local v3    # "ind":I
    :cond_9
    const-string v6, "ERROR_EVENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 162
    const/4 v0, 0x6

    .line 163
    .restart local v0    # "event":I
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ERROR_EVENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # ++operator for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mRecvErrors:I
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$104(Lcom/android/server/wifi/hotspot/SoftapMonitor;)I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_0

    .line 165
    const-string v6, "SoftapMonitor"

    const-string v7, "Too many ERROR_EVENT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/net/hotspot/HotspotNative;->stopEventWaiting()Z

    goto/16 :goto_1

    .line 171
    .end local v0    # "event":I
    :cond_a
    const-string v6, "WPS_START"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 172
    const/16 v0, 0x8

    .line 173
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarStartEvent()V

    .line 174
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_START"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    .end local v0    # "event":I
    :cond_b
    const-string v6, "WPS_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 176
    const/16 v0, 0x9

    .line 177
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarSuccessfulEvent()V

    .line 178
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    .end local v0    # "event":I
    :cond_c
    const-string v6, "WPS_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 180
    const/16 v0, 0xa

    .line 181
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleWpsRegistrarFailEvent()V

    .line 182
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WPS_REGISTRAR_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 185
    .end local v0    # "event":I
    :cond_d
    const-string v6, "L2PE_SUCCESSFUL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 186
    const/16 v0, 0xb

    .line 187
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleL2peSuccessfulEvent()V

    .line 188
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_SUCCESSFUL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    .end local v0    # "event":I
    :cond_e
    const-string v6, "L2PE_FAIL"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 191
    const/16 v0, 0xc

    .line 192
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleL2peFailEvent()V

    .line 193
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", L2PE_FAIL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    .end local v0    # "event":I
    :cond_f
    const-string v6, "HANG"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 198
    const/16 v0, 0xd

    .line 199
    .restart local v0    # "event":I
    invoke-direct {p0}, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->handleAssocListChange()V

    .line 200
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->getWifidisplayApEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 201
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", HANGED, ignore in Concurrent Mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 204
    :cond_10
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x2400c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 205
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", HANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    .end local v0    # "event":I
    :cond_11
    const-string v6, "PERF_LOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 210
    const/16 v0, 0xe

    .line 211
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v7}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v7

    const v8, 0x24066

    invoke-virtual {v7, v8, v2}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 212
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF_LOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v0    # "event":I
    :cond_12
    const-string v6, "PERF_UNLOCK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 215
    const/16 v0, 0xf

    .line 216
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    const v7, 0x24067

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 217
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PERF_UNLOCK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    .end local v0    # "event":I
    :cond_13
    const-string v6, "MAX_CLIENT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 220
    const/16 v0, 0x10

    .line 221
    .restart local v0    # "event":I
    iget-object v6, p0, Lcom/android/server/wifi/hotspot/SoftapMonitor$MonitorThread;->this$0:Lcom/android/server/wifi/hotspot/SoftapMonitor;

    # getter for: Lcom/android/server/wifi/hotspot/SoftapMonitor;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v6}, Lcom/android/server/wifi/hotspot/SoftapMonitor;->access$200(Lcom/android/server/wifi/hotspot/SoftapMonitor;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiStateMachine;->maxClinetNoty()V

    .line 222
    const-string v6, "SoftapMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "received event="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", MAX_CLIENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
