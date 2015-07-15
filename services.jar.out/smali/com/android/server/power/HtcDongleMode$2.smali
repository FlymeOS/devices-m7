.class Lcom/android/server/power/HtcDongleMode$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcDongleMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcDongleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcDongleMode;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcDongleMode;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 116
    if-nez p2, :cond_1

    .line 117
    const-string v4, "HtcDongleMode"

    const-string v5, "onReceive: intent = null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcDongleMode;->access$000(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "HtcDongleMode"

    const-string v5, "onReceive: STATE CHANGED FOR MIRROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    const-string v4, "mirror_display_status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 130
    .local v2, "isConnected":Z
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    # invokes: Lcom/android/server/power/HtcDongleMode;->enableMirrorMode(Z)V
    invoke-static {v4, v2}, Lcom/android/server/power/HtcDongleMode;->access$300(Lcom/android/server/power/HtcDongleMode;Z)V

    goto :goto_0

    .line 132
    .end local v2    # "isConnected":Z
    :cond_3
    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcDongleMode;->access$000(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    const-string v4, "HtcDongleMode"

    const-string v5, "onReceive: WIFI_DISPLAY_STATUS_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_4
    :try_start_0
    const-string v4, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/WifiDisplayStatus;

    .line 140
    .local v3, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v3, :cond_5

    .line 141
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v5

    # invokes: Lcom/android/server/power/HtcDongleMode;->enableMiracastMode(I)V
    invoke-static {v4, v5}, Lcom/android/server/power/HtcDongleMode;->access$400(Lcom/android/server/power/HtcDongleMode;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v3    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcDongleMode"

    const-string v5, "Exception for get status"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_5
    :try_start_1
    const-string v4, "HtcDongleMode"

    const-string v5, "After transferWifiDisplayStatus : null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    .end local v3    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_6
    const-string v4, "com.htc.HTCMirrorLinkServer.CONNECTION_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    # getter for: Lcom/android/server/power/HtcDongleMode;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcDongleMode;->access$000(Lcom/android/server/power/HtcDongleMode;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 153
    const-string v4, "HtcDongleMode"

    const-string v5, "onReceive: MIRROR_LINK_MODE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_7
    const-string v4, "IsConnected"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 157
    .restart local v2    # "isConnected":Z
    iget-object v4, p0, Lcom/android/server/power/HtcDongleMode$2;->this$0:Lcom/android/server/power/HtcDongleMode;

    # invokes: Lcom/android/server/power/HtcDongleMode;->enableDongleMode(Z)V
    invoke-static {v4, v2}, Lcom/android/server/power/HtcDongleMode;->access$200(Lcom/android/server/power/HtcDongleMode;Z)V

    goto/16 :goto_0
.end method
