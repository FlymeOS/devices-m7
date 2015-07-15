.class Lcom/htc/server/WirelessDisplayService$20;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0

    .prologue
    .line 3157
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 3161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3162
    .local v0, "action":Ljava/lang/String;
    const-string v5, "WirelessDisplayService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogIntentReceiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const-string v5, "com.htc.intent.action.WIRELESS_DISPLAY_CONNECTING_DIALOG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3165
    .local v2, "startTime":J
    const-string v5, "visible"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3167
    .local v4, "visible":Z
    const-string v5, "device"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3169
    .local v1, "device":Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3170
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/ConnectingDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/ConnectingDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$11002(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectingDialog;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    .line 3172
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3174
    if-nez v1, :cond_2

    .line 3175
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    .line 3180
    :goto_0
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->show()V

    .line 3198
    .end local v1    # "device":Ljava/lang/String;
    .end local v2    # "startTime":J
    .end local v4    # "visible":Z
    :cond_1
    :goto_1
    return-void

    .line 3177
    .restart local v1    # "device":Ljava/lang/String;
    .restart local v2    # "startTime":J
    .restart local v4    # "visible":Z
    :cond_2
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mResource:Landroid/content/res/Resources;
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$11100(Lcom/htc/server/WirelessDisplayService;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30701a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    goto :goto_0

    .line 3184
    :cond_3
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->setContentString(Ljava/lang/String;)V

    .line 3185
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectingDialog:Lcom/htc/server/medialinkdialog/ConnectingDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11000(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectingDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectingDialog;->dismiss()V

    goto :goto_1

    .line 3187
    .end local v1    # "device":Ljava/lang/String;
    .end local v2    # "startTime":J
    .end local v4    # "visible":Z
    :cond_4
    const-string v5, "com.htc.intent.action.WIRELESS_DISPLAY_SHOW_DONGLE_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3188
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$8700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v5

    if-nez v5, :cond_5

    .line 3189
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$8702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/DongleConnectedDialog;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    .line 3190
    :cond_5
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$8700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;->show()V

    goto :goto_1

    .line 3191
    :cond_6
    const-string v5, "com.htc.intent.action.INTENT_NOTIFY_DONGLE_CONNECTION_FAIL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3192
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4.5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "4.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3193
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11200(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    move-result-object v5

    if-nez v5, :cond_7

    .line 3194
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    new-instance v6, Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v7

    invoke-direct {v6, p1, v7}, Lcom/htc/server/medialinkdialog/ConnectFailDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5, v6}, Lcom/htc/server/WirelessDisplayService;->access$11202(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectFailDialog;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    .line 3195
    :cond_7
    iget-object v5, p0, Lcom/htc/server/WirelessDisplayService$20;->this$0:Lcom/htc/server/WirelessDisplayService;

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectFailDialog:Lcom/htc/server/medialinkdialog/ConnectFailDialog;
    invoke-static {v5}, Lcom/htc/server/WirelessDisplayService;->access$11200(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectFailDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/server/medialinkdialog/ConnectFailDialog;->show()V

    goto/16 :goto_1
.end method
