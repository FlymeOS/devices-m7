.class Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;
.super Landroid/telephony/PhoneStateListener;
.source "HtcWifiControlRoamOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HtcWifiControlRoamOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 103
    const-string v0, "HtcWifiControlRoamOffload: "

    const-string v1, "Receive mPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    # setter for: Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->access$102(Lcom/android/server/wifi/HtcWifiControlRoamOffload;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$2;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    # getter for: Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->access$100(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    # setter for: Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mobile_signalStrength:I
    invoke-static {v0}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->access$202(I)I

    .line 107
    const-string v0, "HtcWifiControlRoamOffload: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive mPhoneStateListener, getGsmSignalStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method
