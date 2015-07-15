.class Lcom/android/server/wifi/WifiHtcOffload$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiHtcOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiHtcOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcOffload;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 572
    packed-switch p1, :pswitch_data_0

    .line 589
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 610
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    .line 633
    :goto_1
    return-void

    .line 574
    :pswitch_1
    const-string v0, "WifiHtcOffload"

    const-string v1, "Mobile data service is ...: DATA_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :pswitch_2
    const-string v0, "WifiHtcOffload"

    const-string v1, "Mobile data service is ...: DATA_SUSPENDED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :pswitch_3
    const-string v0, "WifiHtcOffload"

    const-string v1, "Mobile data service is ...: DATA_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :pswitch_4
    const-string v0, "WifiHtcOffload"

    const-string v1, "Mobile data service is ...: DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    goto :goto_0

    .line 606
    :pswitch_5
    sput p2, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    .line 607
    const/16 v0, 0x16

    sput v0, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    goto :goto_1

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "srvState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x0

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "type":Ljava/lang/String;
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 524
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 542
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$500(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 543
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vh_mobile_available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiHtcOffload;->access$702(Lcom/android/server/wifi/WifiHtcOffload;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mMobileNetworkType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 568
    :cond_0
    return-void

    .line 526
    :pswitch_0
    const-string v1, "WifiHtcOffload"

    const-string v2, "onServiceStateChanged phone-State:  ServiceState.STATE_EMERGENCY_ONLY "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :pswitch_1
    const-string v1, "WifiHtcOffload"

    const-string v2, "onServiceStateChanged phone-State:  ServiceState.STATE_OUT_OF_SERVICE "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :pswitch_2
    const-string v1, "WifiHtcOffload"

    const-string v2, "onServiceStateChanged phone-State:  ServiceState.STATE_POWER_OFF "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sput-boolean v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    .line 532
    sput v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    goto :goto_0

    .line 535
    :pswitch_3
    const-string v1, "WifiHtcOffload"

    const-string v2, "onServiceStateChanged phone-State:  ServiceState.STATE_IN_SERVICE "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    .line 537
    sput v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    goto/16 :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiHtcOffload;->access$802(Lcom/android/server/wifi/WifiHtcOffload;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 639
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    .line 640
    const/16 v1, 0x16

    sput v1, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    .line 641
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$500(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 642
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrengthsChanged rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiHtcOffload;->access$702(Lcom/android/server/wifi/WifiHtcOffload;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    const-string v1, "WifiHtcOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mMobileNetworkType= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcOffload$1;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mMobileNetworkType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->access$700(Lcom/android/server/wifi/WifiHtcOffload;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcOffload;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 667
    :cond_0
    return-void
.end method
