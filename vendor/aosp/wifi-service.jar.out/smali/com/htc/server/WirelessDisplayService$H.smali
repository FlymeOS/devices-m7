.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 940
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 74
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 944
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v67, v0

    .line 945
    .local v67, "type":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 946
    .local v10, "arg1":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 947
    .local v11, "arg2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v50

    .line 949
    .local v50, "previousState":I
    sparse-switch v67, :sswitch_data_0

    .line 2162
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 951
    :sswitch_0
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 953
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-result-object v69

    if-nez v69, :cond_1

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/OutputTVDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/OutputTVDialog;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    .line 955
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mOutputTVDialog:Lcom/htc/server/medialinkdialog/OutputTVDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/OutputTVDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/OutputTVDialog;->show()V

    goto :goto_0

    .line 958
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-result-object v69

    if-nez v69, :cond_2

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$402(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/HdmiPlugDialog;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    .line 960
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mHdmiPlugDialog:Lcom/htc/server/medialinkdialog/HdmiPlugDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/HdmiPlugDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/HdmiPlugDialog;->show()V

    goto :goto_0

    .line 963
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    if-nez v69, :cond_3

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$502(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    .line 965
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->show()V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mVibrator:Landroid/os/Vibrator;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/Vibrator;

    move-result-object v69

    const-wide/16 v70, 0xc8

    invoke-virtual/range {v69 .. v71}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 969
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    if-nez v69, :cond_4

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    .line 971
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->show()V

    goto/16 :goto_0

    .line 978
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mNotifySwitchHDMIDialog:Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/NotifySwitchHDMIDialog;->dismiss()V

    goto/16 :goto_0

    .line 983
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectionWeakDialog:Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/ConnectionWeakDialog;->dismiss()V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Z)Z

    goto/16 :goto_0

    .line 989
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_5

    .line 990
    const-string v69, "WirelessDisplayService"

    const-string v70, "Disconnect due to updateWivuList: curDongle is been removed"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 993
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_6

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 995
    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1000
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 1002
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x3

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1004
    :catch_0
    move-exception v20

    .line 1005
    .local v20, "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1010
    .end local v20    # "e":Ljava/lang/Exception;
    :sswitch_5
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 1012
    :pswitch_5
    const/16 v69, 0x3

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_7

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    # getter for: Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_0

    .line 1015
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestDelayTimerStop(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1016
    :catch_1
    move-exception v20

    .line 1017
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1020
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_7
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1021
    # getter for: Lcom/htc/server/WirelessDisplayService;->isNeedStopMMDelayTimer:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1025
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 1027
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1028
    :catch_2
    move-exception v20

    .line 1029
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1034
    .end local v20    # "e":Ljava/lang/Exception;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 1036
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1037
    :catch_3
    move-exception v20

    .line 1038
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1047
    .end local v20    # "e":Ljava/lang/Exception;
    :sswitch_6
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_CHANGE_STATE previousState = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", state="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " err="

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    move/from16 v0, v50

    if-eq v10, v0, :cond_0

    .line 1051
    const/16 v69, 0x8

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_8

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_8

    .line 1053
    const-string v69, "WirelessDisplayService"

    const-string v70, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1056
    :cond_8
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_9

    .line 1058
    const/16 v69, 0x33

    const/16 v70, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 1059
    .local v34, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1064
    .end local v34    # "msg2":Landroid/os/Message;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1067
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_b

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # operator-- for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1610(Lcom/htc/server/WirelessDisplayService;)I

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v69

    if-nez v69, :cond_a

    .line 1070
    const-string v69, "WirelessDisplayService"

    const-string v70, "wifi scan fail!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_a
    const/16 v69, 0x11

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    .line 1072
    .local v42, "msgWifiScan":Landroid/os/Message;
    const-wide/16 v70, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1074
    .end local v42    # "msgWifiScan":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1602(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 1078
    :sswitch_8
    new-instance v49, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v49, "notifyUserSwitch":Landroid/content/Intent;
    const-string v69, "visible"

    const/16 v70, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1081
    const-string v69, "WirelessDisplayService"

    const-string v70, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1084
    .end local v49    # "notifyUserSwitch":Landroid/content/Intent;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v68

    .line 1085
    .local v68, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v68, :cond_0

    .line 1088
    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v25

    .line 1089
    .local v25, "ipAddress":I
    move/from16 v63, v25

    .line 1090
    .local v63, "temp":I
    const-string v69, "%d.%d.%d.%d"

    const/16 v70, 0x4

    move/from16 v0, v70

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v70, v0

    const/16 v71, 0x0

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x1

    shr-int/lit8 v72, v25, 0x8

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x2

    shr-int/lit8 v72, v25, 0x10

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    const/16 v71, 0x3

    shr-int/lit8 v72, v25, 0x18

    move/from16 v0, v72

    and-int/lit16 v0, v0, 0xff

    move/from16 v72, v0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v70, v71

    invoke-static/range {v69 .. v70}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 1095
    .local v26, "ipStr":Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "  "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    # getter for: Lcom/htc/server/WirelessDisplayService;->IPV4_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1800()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v30

    .line 1097
    .local v30, "matcher2":Ljava/util/regex/Matcher;
    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_f

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v69

    const-string v70, "0.0.0.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-nez v69, :cond_f

    .line 1098
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Got the IP address"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v30 .. v30}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1100
    :try_start_4
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-nez v69, :cond_e

    .line 1101
    new-instance v69, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v72

    const-string v73, "3655"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1102
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v69

    const/16 v71, -0x1

    move/from16 v0, v69

    move/from16 v1, v71

    if-ne v0, v1, :cond_d

    .line 1103
    const-string v69, "WirelessDisplayService"

    const-string v71, "Something Wrong with netHD initialization Delete mWivuThread"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/16 v69, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1127
    :cond_c
    :goto_1
    monitor-exit v70
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1107
    :cond_d
    :try_start_5
    const-string v69, "WirelessDisplayService"

    const-string v71, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1109
    .local v12, "bundle":Landroid/os/Bundle;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x191

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v56

    .line 1110
    .local v56, "setif":Landroid/os/Message;
    const-string v69, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1112
    invoke-virtual/range {v56 .. v56}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_c

    .line 1114
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x28

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v43

    .line 1115
    .local v43, "msg_leave":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1127
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v43    # "msg_leave":Landroid/os/Message;
    .end local v56    # "setif":Landroid/os/Message;
    :catchall_0
    move-exception v69

    monitor-exit v70
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v69

    .line 1120
    :cond_e
    :try_start_6
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 1121
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_c

    .line 1123
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x1f

    const/16 v72, 0x28

    const/16 v73, -0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v43

    .line 1124
    .restart local v43    # "msg_leave":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1129
    .end local v43    # "msg_leave":Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1130
    const/16 v69, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1131
    .local v23, "getIp":Landroid/os/Message;
    const-wide/16 v70, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1137
    .end local v23    # "getIp":Landroid/os/Message;
    .end local v25    # "ipAddress":I
    .end local v26    # "ipStr":Ljava/lang/String;
    .end local v30    # "matcher2":Ljava/util/regex/Matcher;
    .end local v63    # "temp":I
    .end local v68    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :sswitch_a
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_STOP_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1141
    .local v5, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_15

    .line 1142
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v69

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_13

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 1144
    const-string v69, "WirelessDisplayService"

    const-string v70, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_10

    .line 1146
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x1f

    const/16 v71, 0x28

    const/16 v72, -0x1

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v43

    .line 1147
    .restart local v43    # "msg_leave":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1165
    .end local v43    # "msg_leave":Landroid/os/Message;
    :cond_10
    :goto_2
    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1166
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1167
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1168
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 1169
    .local v36, "msgChangeState":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_11

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_12

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2700(Lcom/htc/server/WirelessDisplayService;)V

    .line 1181
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x49

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1150
    .end local v36    # "msgChangeState":Landroid/os/Message;
    :cond_13
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1151
    :try_start_7
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_14

    .line 1152
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1154
    :cond_14
    const/16 v69, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1155
    monitor-exit v70

    goto/16 :goto_2

    :catchall_1
    move-exception v69

    monitor-exit v70
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v69

    .line 1158
    :cond_15
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1159
    :try_start_8
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_16

    .line 1160
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1162
    :cond_16
    const/16 v69, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1163
    monitor-exit v70

    goto/16 :goto_2

    :catchall_2
    move-exception v69

    monitor-exit v70
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v69

    .line 1188
    .end local v5    # "activeNetwork":Landroid/net/NetworkInfo;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3200(Lcom/htc/server/WirelessDisplayService;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 1190
    new-instance v49, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .restart local v49    # "notifyUserSwitch":Landroid/content/Intent;
    const-string v69, "visible"

    const/16 v70, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1193
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0xde

    const/16 v71, 0x0

    const/16 v72, 0x0

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    .line 1194
    .local v19, "disableSwitchMsg":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0xde

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1195
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/16 v70, 0x1388

    move-object/from16 v0, v69

    move-object/from16 v1, v19

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1197
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    const/16 v71, 0x1

    const/16 v72, 0x0

    invoke-virtual/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 1198
    .local v31, "mirrorMsg":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1199
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/16 v70, 0x13ba

    move-object/from16 v0, v69

    move-object/from16 v1, v31

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1205
    .end local v19    # "disableSwitchMsg":Landroid/os/Message;
    .end local v31    # "mirrorMsg":Landroid/os/Message;
    .end local v49    # "notifyUserSwitch":Landroid/content/Intent;
    :sswitch_c
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x4

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .line 1206
    .local v40, "msgTimeOut":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v69

    if-eqz v69, :cond_17

    .line 1207
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1209
    const-wide/32 v70, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1211
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-eqz v69, :cond_18

    # getter for: Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_18

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # operator-- for: Lcom/htc/server/WirelessDisplayService;->musicKeepPollingCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3510(Lcom/htc/server/WirelessDisplayService;)I

    .line 1213
    const-string v69, "WirelessDisplayService"

    const-string v70, "Keep Polling Music Alive, Wait 2 sec later"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const-wide/16 v70, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1217
    :cond_18
    # getter for: Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setToDefault_musicKeepPollingCount()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1219
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/16 v69, 0x1f

    const/16 v70, 0x21

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v65

    .line 1221
    .local v65, "timeOutStop":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1226
    .end local v40    # "msgTimeOut":Landroid/os/Message;
    .end local v65    # "timeOutStop":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1229
    :sswitch_e
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1231
    :try_start_9
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_19

    .line 1232
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_1a

    .line 1233
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    .line 1237
    :cond_19
    :goto_3
    monitor-exit v70

    goto/16 :goto_0

    :catchall_3
    move-exception v69

    monitor-exit v70
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v69

    .line 1235
    :cond_1a
    :try_start_a
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    .line 1240
    :sswitch_f
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "Mirror State: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1242
    new-instance v69, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 1257
    :sswitch_10
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_WIFI_DIS"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 1261
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-nez v69, :cond_0

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v70

    new-instance v71, Landroid/content/Intent;

    const-string v72, "com.htc.wfdservice.IWfdService"

    invoke-direct/range {v71 .. v72}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v72

    const/16 v73, 0x1

    invoke-virtual/range {v70 .. v73}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1264
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_0

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Bind WHDMI WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1268
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_1c

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v69

    if-eqz v69, :cond_1b

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4000(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1272
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4202(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1274
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Unbind WfdService = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_1c
    const/16 v69, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1277
    # getter for: Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1280
    :sswitch_13
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1285
    :sswitch_14
    const-string v69, "WirelessDisplayService"

    const-string v70, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const-string v70, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    .line 1290
    :sswitch_15
    move v13, v10

    .line 1291
    .local v13, "configState":I
    const/16 v69, 0x3

    move/from16 v0, v69

    if-eq v10, v0, :cond_1d

    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v10, v0, :cond_23

    .line 1292
    :cond_1d
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "receiver WfdServices Call back, "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v32, "mirrorResultIntent":Landroid/content/Intent;
    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v10, v0, :cond_22

    .line 1295
    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    :cond_1e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v14

    .line 1302
    .local v14, "currentDongle":Lcom/htc/service/DongleInfo;
    const/16 v69, 0x4

    move/from16 v0, v69

    if-eq v10, v0, :cond_1f

    if-eqz v14, :cond_21

    iget v0, v14, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x2

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_21

    .line 1303
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "5.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.5"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_21

    .line 1304
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1307
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4600(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1296
    .end local v14    # "currentDongle":Lcom/htc/service/DongleInfo;
    :cond_22
    const/16 v69, 0x4

    move/from16 v0, v69

    if-ne v10, v0, :cond_1e

    .line 1297
    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_4

    .line 1308
    .end local v32    # "mirrorResultIntent":Landroid/content/Intent;
    :cond_23
    const/16 v69, 0x5

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 1309
    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1319
    .end local v13    # "configState":I
    :sswitch_16
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_24

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_25

    const/16 v69, 0x1

    :goto_5
    move-object/from16 v0, v70

    move/from16 v1, v69

    # invokes: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1320
    :cond_25
    const/16 v69, 0x0

    goto :goto_5

    .line 1327
    :sswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_res"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 1328
    .local v61, "status":Ljava/lang/String;
    const/16 v69, 0x3e

    move/from16 v0, v69

    if-ne v10, v0, :cond_28

    .line 1330
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_27

    .line 1332
    const-string v69, "VALUE=1"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_26

    .line 1333
    # getter for: Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_0

    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x2

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1340
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v64

    .line 1341
    .local v64, "timeOut2":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v70, 0x15f90

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1344
    .end local v64    # "timeOut2":Landroid/os/Message;
    :cond_26
    const-string v69, "VALUE=0"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1345
    # getter for: Lcom/htc/server/WirelessDisplayService;->cur_plugged_status:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1348
    :cond_27
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    .line 1352
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1355
    :cond_28
    const/16 v69, 0x3f

    move/from16 v0, v69

    if-ne v10, v0, :cond_2b

    .line 1357
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_2a

    .line 1359
    const-string v69, "VALUE=1"

    move-object/from16 v0, v61

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v69

    if-eqz v69, :cond_29

    .line 1360
    # getter for: Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1362
    :cond_29
    # getter for: Lcom/htc/server/WirelessDisplayService;->cur_discovery_status:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1363
    :cond_2a
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x5

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1366
    :cond_2b
    const/16 v69, 0x40

    move/from16 v0, v69

    if-ne v10, v0, :cond_2c

    .line 1367
    const-string v69, "WirelessDisplayService"

    move-object/from16 v0, v69

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1368
    :cond_2c
    const/16 v69, 0x41

    move/from16 v0, v69

    if-eq v10, v0, :cond_0

    .line 1370
    const/16 v69, 0x42

    move/from16 v0, v69

    if-ne v10, v0, :cond_2d

    .line 1371
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_0

    .line 1372
    move-object/from16 v66, v61

    .line 1373
    .local v66, "tosend":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v66

    # invokes: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1375
    .end local v66    # "tosend":Ljava/lang/String;
    :cond_2d
    const/16 v69, 0x43

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 1376
    const/16 v69, -0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_2e

    .line 1377
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Retry setinterface , mCurNetworkInterface:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, "mWivuRetryCount: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuRetryCount:I
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # operator-- for: Lcom/htc/server/WirelessDisplayService;->mWivuRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5210(Lcom/htc/server/WirelessDisplayService;)I

    .line 1381
    const-wide/16 v70, 0xc8

    :try_start_b
    invoke-static/range {v70 .. v71}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 1385
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1382
    :catch_4
    move-exception v20

    .line 1383
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    const-string v70, "sleep() error"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1388
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x5

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5202(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 1394
    .end local v61    # "status":Ljava/lang/String;
    :sswitch_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v70, "wivu_req"

    invoke-virtual/range {v69 .. v70}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1395
    .local v53, "request":Ljava/lang/String;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WIVU_REQ:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", arg1 = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " , arg2 = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    if-eqz v53, :cond_3c

    const/16 v69, 0x16

    move/from16 v0, v69

    if-ne v10, v0, :cond_3c

    .line 1398
    # getter for: Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x16

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1399
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1400
    # getter for: Lcom/htc/server/WirelessDisplayService;->mIPv4Pattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5500()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    .line 1401
    .local v29, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_2f

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    :cond_2f
    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5700()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    .line 1404
    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_30

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5802(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1406
    :cond_30
    # getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5900()Ljava/util/regex/Pattern;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v29

    .line 1407
    invoke-virtual/range {v29 .. v29}, Ljava/util/regex/Matcher;->find()Z

    move-result v69

    if-eqz v69, :cond_31

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$6002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1409
    :cond_31
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_32

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IP = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", audioPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", videoPort = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5600(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v72

    # invokes: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_3a

    const/16 v69, 0x2

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_33

    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_3a

    .line 1414
    :cond_33
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_37

    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_37

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1416
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_36

    .line 1417
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x29

    const/16 v72, 0x2a

    const/16 v73, 0x2c

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    move/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 1418
    .local v35, "msg3":Landroid/os/Message;
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1420
    const-wide/16 v72, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v71, 0x1

    move/from16 v0, v69

    move/from16 v1, v71

    if-ne v0, v1, :cond_35

    .line 1422
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x74

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v69

    if-eqz v69, :cond_34

    .line 1423
    const/16 v69, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1424
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v71, 0x74

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1426
    :cond_34
    const/16 v69, 0x29

    const/16 v71, 0x2b

    const/16 v72, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v72, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1427
    const-string v69, "WirelessDisplayService"

    const-string v71, "ScreenReceiver:starting Timeout of 2mins: mAppCallScreen: PAUSE_SCREEN"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/16 v69, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    const-wide/32 v72, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v69

    if-eqz v69, :cond_35

    .line 1430
    # getter for: Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1436
    .end local v35    # "msg3":Landroid/os/Message;
    :cond_35
    :goto_7
    monitor-exit v70

    goto/16 :goto_0

    :catchall_4
    move-exception v69

    monitor-exit v70
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v69

    .line 1434
    :cond_36
    :try_start_d
    const-string v69, "WirelessDisplayService"

    const-string v71, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_7

    .line 1437
    :cond_37
    const/16 v69, 0x2

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_38

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1443
    const/16 v69, 0x1

    const/16 v70, 0x9

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    const/16 v71, 0x2

    const/16 v72, 0x1

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;IIZ)V

    .line 1446
    const-string v69, "WirelessDisplayService"

    const-string v70, "IncomingCallReceiver during configuring set mAppCallScreen:PAUSE_CALL"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1448
    :cond_38
    const/16 v69, 0x33

    const/16 v70, 0x34

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1450
    .local v33, "msg1":Landroid/os/Message;
    const-wide/16 v70, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_0

    .line 1452
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x74

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v69

    if-eqz v69, :cond_39

    .line 1453
    const/16 v69, 0x74

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1454
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x74

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1456
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    const/16 v71, 0x1

    const/16 v72, 0x1

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateMirrorPauseState(IIZ)V
    invoke-static/range {v69 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;IIZ)V

    .line 1457
    const/16 v69, 0x29

    const/16 v70, 0x2b

    const/16 v71, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1458
    const-string v69, "WirelessDisplayService"

    const-string v70, "ScreenReceiver:starting Timeout of 2mins: mAppCallScreen: PAUSE_SCREEN"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/16 v69, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    const-wide/32 v70, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3300(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1461
    # getter for: Lcom/htc/server/WirelessDisplayService;->isMusicAlive:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1469
    .end local v33    # "msg1":Landroid/os/Message;
    :cond_3a
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1470
    :try_start_e
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_3b

    .line 1471
    const-string v69, "WirelessDisplayService"

    const-string v71, "Dongle wrong state: take it out"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1473
    const/16 v69, 0x1f

    const/16 v71, 0x21

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    .line 1474
    .local v28, "makeSure":Landroid/os/Message;
    const-wide/16 v72, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1476
    .end local v28    # "makeSure":Landroid/os/Message;
    :cond_3b
    monitor-exit v70

    goto/16 :goto_0

    :catchall_5
    move-exception v69

    monitor-exit v70
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v69

    .line 1478
    .end local v29    # "matcher":Ljava/util/regex/Matcher;
    :cond_3c
    const/16 v69, 0x17

    move/from16 v0, v69

    if-ne v10, v0, :cond_42

    .line 1480
    # getter for: Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v70, 0x17

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1481
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1482
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1483
    :try_start_f
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_3d

    .line 1484
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1485
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v71, 0x4

    move/from16 v0, v69

    move/from16 v1, v71

    if-eq v0, v1, :cond_3d

    .line 1486
    const-string v69, "WirelessDisplayService"

    const-string v71, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1488
    const/16 v69, 0x6

    const/16 v71, -0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .line 1489
    .local v62, "stopTrans":Landroid/os/Message;
    const-wide/16 v72, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1492
    .end local v62    # "stopTrans":Landroid/os/Message;
    :cond_3d
    monitor-exit v70
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1493
    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_40

    .line 1494
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x4

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_41

    .line 1495
    :cond_3e
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_3f

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-nez v69, :cond_3f

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x7

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1498
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1509
    :cond_3f
    const-string v69, "WirelessDisplayService"

    const-string v70, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_40
    :goto_8
    # getter for: Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6700()Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 1521
    const-string v69, "WirelessDisplayService"

    const-string v70, "Switching the dongle"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    const/16 v69, 0x0

    invoke-static/range {v69 .. v69}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v69

    # setter for: Lcom/htc/server/WirelessDisplayService;->needToSwitch:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6702(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1492
    :catchall_6
    move-exception v69

    :try_start_10
    monitor-exit v70
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v69

    .line 1511
    :cond_41
    const/16 v69, 0x1

    const/16 v70, 0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1512
    .local v37, "msgChangeState1":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8

    .line 1527
    .end local v37    # "msgChangeState1":Landroid/os/Message;
    :cond_42
    const/16 v69, 0x18

    move/from16 v0, v69

    if-ne v10, v0, :cond_43

    .line 1528
    const-string v69, "="

    move-object/from16 v0, v53

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1529
    .local v27, "macs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v27

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6800(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-interface/range {v69 .. v70}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1532
    const-string v69, "WirelessDisplayService"

    const-string v70, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1539
    .end local v27    # "macs":[Ljava/lang/String;
    :cond_43
    const/16 v69, 0x1b

    move/from16 v0, v69

    if-ne v10, v0, :cond_44

    .line 1540
    move-object/from16 v6, v53

    .line 1541
    .local v6, "addToList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    # invokes: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_0

    const/16 v69, 0x8

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-interface/range {v69 .. v70}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 1544
    const-string v69, "WirelessDisplayService"

    const-string v70, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x2

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1549
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1402(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1554
    .end local v6    # "addToList":Ljava/lang/String;
    :cond_44
    const/16 v69, 0x19

    move/from16 v0, v69

    if-ne v10, v0, :cond_45

    .line 1555
    const-string v69, "WirelessDisplayService"

    const-string v70, "SWUPGRADE and send notification"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1631
    :cond_45
    const/16 v69, 0x1a

    move/from16 v0, v69

    if-ne v10, v0, :cond_48

    .line 1632
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    if-eqz v11, :cond_46

    const/16 v69, 0x2

    move/from16 v0, v69

    if-ge v11, v0, :cond_46

    .line 1634
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Current Interface"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", Mirror State:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v17

    .line 1637
    .local v17, "dfDongle":Lcom/htc/service/DongleInfo;
    if-eqz v17, :cond_0

    .line 1638
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "curDongle state:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v71, v0

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    .line 1640
    const/16 v69, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1644
    .end local v17    # "dfDongle":Lcom/htc/service/DongleInfo;
    :cond_46
    if-eqz v11, :cond_47

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_0

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    .line 1649
    :cond_47
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1651
    :cond_48
    const/16 v69, 0x1c

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.5"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_0

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v70, 0x7

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    .line 1656
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-nez v69, :cond_0

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWeakConnectionDialog:Z
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$802(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 1658
    const/16 v69, 0xc9

    const/16 v70, 0x3

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1659
    const/16 v69, 0x12f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0x1388

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1667
    .end local v53    # "request":Ljava/lang/String;
    :sswitch_19
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1668
    :try_start_11
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-nez v69, :cond_4a

    .line 1669
    monitor-exit v70

    goto/16 :goto_0

    .line 1784
    :catchall_7
    move-exception v69

    monitor-exit v70
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v69

    .line 1670
    :cond_4a
    const/16 v69, 0x20

    move/from16 v0, v69

    if-ne v10, v0, :cond_4c

    .line 1671
    :try_start_12
    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_DISCOVERY"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    .line 1783
    :cond_4b
    :goto_9
    monitor-exit v70

    goto/16 :goto_0

    .line 1673
    :cond_4c
    const/16 v69, 0x21

    move/from16 v0, v69

    if-ne v10, v0, :cond_4f

    .line 1675
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_PLUGGED:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/16 v52, -0x1

    .line 1677
    .local v52, "req":I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_4e

    .line 1678
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_4d

    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_4d

    # getter for: Lcom/htc/server/WirelessDisplayService;->pre_request:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v69

    const/16 v71, 0x16

    move/from16 v0, v69

    move/from16 v1, v71

    if-ne v0, v1, :cond_4d

    .line 1680
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->reset_lastsink()I

    .line 1682
    :cond_4d
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v52

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_4b

    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_4b

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x2

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    move/from16 v2, v72

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1689
    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v64

    .line 1690
    .restart local v64    # "timeOut2":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v72, 0x15f90

    move-object/from16 v0, v69

    move-object/from16 v1, v64

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 1695
    .end local v64    # "timeOut2":Landroid/os/Message;
    :cond_4e
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v52

    .line 1696
    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 1697
    .local v38, "msgChangeState2":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1700
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_4b

    .line 1701
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1702
    const/16 v69, 0x6

    const/16 v71, -0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v72, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 1705
    .end local v38    # "msgChangeState2":Landroid/os/Message;
    .end local v52    # "req":I
    :cond_4f
    const/16 v69, 0x22

    move/from16 v0, v69

    if-ne v10, v0, :cond_50

    .line 1707
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_9

    .line 1709
    :cond_50
    const/16 v69, 0x23

    move/from16 v0, v69

    if-ne v10, v0, :cond_51

    .line 1711
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_9

    .line 1713
    :cond_51
    const/16 v69, 0x24

    move/from16 v0, v69

    if-ne v10, v0, :cond_53

    .line 1715
    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_STOP_DIS"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1717
    const/16 v69, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1718
    const/16 v69, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1719
    const/16 v69, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1720
    const/16 v69, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1722
    const/16 v69, 0x1

    const/16 v71, 0x1

    const/16 v72, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    .line 1723
    .local v39, "msgChangeState3":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1727
    const/16 v69, 0x0

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2002(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    if-eqz v69, :cond_52

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    # setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1730
    const-string v69, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v69

    invoke-interface/range {v69 .. v69}, Ljava/util/List;->clear()V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v71, 0x49

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_9

    .line 1737
    .end local v39    # "msgChangeState3":Landroid/os/Message;
    :cond_53
    const/16 v69, 0x25

    move/from16 v0, v69

    if-ne v10, v0, :cond_54

    .line 1738
    const-string v69, "WirelessDisplayService"

    const-string v71, "REQ_PEER_SELECT"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/16 v69, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1740
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "dongle_staBssid"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1741
    .local v58, "staBssid2":Ljava/lang/String;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v58

    # setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_9

    .line 1743
    .end local v58    # "staBssid2":Ljava/lang/String;
    :cond_54
    const/16 v69, 0x27

    move/from16 v0, v69

    if-ne v10, v0, :cond_56

    .line 1744
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "interface"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1746
    .local v24, "ifname":Ljava/lang/String;
    const/16 v52, -0x1

    .line 1747
    .restart local v52    # "req":I
    if-eqz v24, :cond_4b

    .line 1748
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_55

    .line 1749
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v52

    .line 1753
    :goto_a
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1751
    :cond_55
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v52

    goto :goto_a

    .line 1755
    .end local v24    # "ifname":Ljava/lang/String;
    .end local v52    # "req":I
    :cond_56
    const/16 v69, 0x28

    move/from16 v0, v69

    if-ne v10, v0, :cond_59

    .line 1756
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const/16 v52, -0x1

    .line 1758
    .restart local v52    # "req":I
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_57

    .line 1759
    # getter for: Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_4b

    .line 1760
    # getter for: Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1761
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v52

    goto/16 :goto_9

    .line 1763
    :cond_57
    # getter for: Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2300(Lcom/htc/server/WirelessDisplayService;)Landroid/os/PowerManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v69

    if-nez v69, :cond_4b

    .line 1764
    :cond_58
    # getter for: Lcom/htc/server/WirelessDisplayService;->isJoinMultiCastGroup:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$7000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1765
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_9

    .line 1767
    .end local v52    # "req":I
    :cond_59
    const/16 v69, 0x191

    move/from16 v0, v69

    if-ne v10, v0, :cond_5b

    .line 1768
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v69

    const-string v71, "interfaceRoute"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1770
    .restart local v24    # "ifname":Ljava/lang/String;
    const/16 v52, -0x1

    .line 1771
    .restart local v52    # "req":I
    if-eqz v24, :cond_4b

    .line 1772
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_5a

    .line 1773
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v52

    goto/16 :goto_9

    .line 1775
    :cond_5a
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_9

    .line 1778
    .end local v24    # "ifname":Ljava/lang/String;
    .end local v52    # "req":I
    :cond_5b
    const/16 v69, 0x192

    move/from16 v0, v69

    if-ne v10, v0, :cond_4b

    .line 1779
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/16 v52, -0x1

    .line 1781
    .restart local v52    # "req":I
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportAAC:Z
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v71

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->enabledAAC(Z)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_9

    .line 1786
    .end local v52    # "req":I
    :sswitch_1a
    const/16 v69, 0x34

    move/from16 v0, v69

    if-ne v10, v0, :cond_5e

    .line 1788
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_START"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const/16 v69, 0x3

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    .line 1794
    const/16 v59, -0x1

    .line 1795
    .local v59, "star":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # invokes: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v59

    .line 1796
    if-nez v59, :cond_5c

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    const/16 v71, 0x0

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1798
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1801
    :cond_5c
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1802
    :try_start_13
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_5d

    .line 1803
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1804
    :cond_5d
    monitor-exit v70
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1804
    :catchall_8
    move-exception v69

    :try_start_14
    monitor-exit v70
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    throw v69

    .line 1807
    .end local v59    # "star":I
    :cond_5e
    const/16 v69, 0x35

    move/from16 v0, v69

    if-ne v10, v0, :cond_60

    .line 1809
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_STOP"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/16 v69, 0x4

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_5f

    .line 1815
    :cond_5f
    const/16 v59, -0x1

    .line 1816
    .restart local v59    # "star":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v59

    .line 1818
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1819
    .end local v59    # "star":I
    :cond_60
    const/16 v69, 0x36

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 1820
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_RESTART"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    const/16 v59, -0x1

    .line 1822
    .restart local v59    # "star":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    # invokes: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v59

    .line 1826
    const/16 v69, -0x1

    move/from16 v0, v59

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1827
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1828
    :try_start_15
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_61

    .line 1829
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1830
    :cond_61
    monitor-exit v70
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    const/16 v71, -0x4

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v69 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1830
    :catchall_9
    move-exception v69

    :try_start_16
    monitor-exit v70
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v69

    .line 1837
    .end local v59    # "star":I
    :sswitch_1b
    move/from16 v60, v50

    .line 1838
    .local v60, "state":I
    const/16 v21, 0x0

    .line 1840
    .local v21, "err":I
    const/16 v69, 0x1

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_0

    .line 1842
    const/16 v69, 0x2b

    move/from16 v0, v69

    if-ne v10, v0, :cond_68

    .line 1843
    const-string v69, "WirelessDisplayService"

    const-string v70, "MEDIA_PAUSE event"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v11, v0, :cond_63

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1846
    .local v8, "app":I
    if-nez v8, :cond_62

    .line 1847
    const/16 v60, 0x7

    .line 1867
    .end local v8    # "app":I
    :cond_62
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v60

    move/from16 v2, v21

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1848
    :cond_63
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v11, v0, :cond_64

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1850
    const/16 v60, 0x4

    goto :goto_b

    .line 1851
    :cond_64
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v11, v0, :cond_62

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.5"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v70, "4.0"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_67

    .line 1856
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    # invokes: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7500(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1864
    :cond_66
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1865
    const/16 v60, 0x9

    goto :goto_b

    .line 1857
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_66

    .line 1859
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto :goto_c

    .line 1860
    :catch_5
    move-exception v20

    .line 1861
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "exception caught"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1868
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_68
    const/16 v69, 0x2a

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 1869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v70

    monitor-enter v70

    .line 1870
    :try_start_18
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$6300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v72

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v69

    if-nez v69, :cond_69

    .line 1872
    monitor-exit v70

    goto/16 :goto_0

    .line 1937
    :catchall_a
    move-exception v69

    monitor-exit v70
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v69

    .line 1874
    :cond_69
    const/16 v69, 0x2c

    move/from16 v0, v69

    if-ne v11, v0, :cond_6d

    .line 1875
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_6a

    .line 1876
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    # invokes: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$7300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1877
    .local v9, "app2":I
    if-nez v9, :cond_6b

    .line 1878
    const/16 v60, 0x3

    .line 1936
    .end local v9    # "app2":I
    :cond_6a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v60

    move/from16 v2, v21

    # invokes: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1937
    monitor-exit v70

    goto/16 :goto_0

    .line 1880
    .restart local v9    # "app2":I
    :cond_6b
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v71

    monitor-enter v71
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 1881
    :try_start_1a
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_6c

    .line 1882
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1883
    :cond_6c
    monitor-exit v71

    .line 1884
    const/16 v60, 0x1

    .line 1885
    const/16 v21, -0x4

    goto :goto_d

    .line 1883
    :catchall_b
    move-exception v69

    monitor-exit v71
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :try_start_1b
    throw v69

    .line 1888
    .end local v9    # "app2":I
    :cond_6d
    const/16 v69, 0x2d

    move/from16 v0, v69

    if-ne v11, v0, :cond_6e

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1896
    const/16 v60, 0x3

    goto :goto_d

    .line 1897
    :cond_6e
    const/16 v69, 0x2e

    move/from16 v0, v69

    if-ne v11, v0, :cond_6a

    .line 1898
    const-string v69, "WirelessDisplayService"

    const-string v71, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const/16 v69, 0x9

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_6a

    .line 1909
    const/16 v60, 0x3

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    if-eqz v69, :cond_71

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v71, "4.5"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-nez v69, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSenseVersion:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const-string v71, "4.0"

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_70

    .line 1912
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v71, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v71

    # invokes: Lcom/htc/server/WirelessDisplayService;->startPatternLockStopAudio(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$7500(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 1920
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7400(Lcom/htc/server/WirelessDisplayService;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto/16 :goto_d

    .line 1915
    :cond_70
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v69

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->requestRTPWriterPause(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto :goto_e

    .line 1916
    :catch_6
    move-exception v20

    .line 1917
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v69, "WirelessDisplayService"

    new-instance v71, Ljava/lang/StringBuilder;

    invoke-direct/range {v71 .. v71}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "exception caught"

    invoke-virtual/range {v71 .. v72}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v71

    move-object/from16 v0, v71

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1922
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v69

    move-object/from16 v1, v71

    # invokes: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$7300(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1923
    .restart local v9    # "app2":I
    if-nez v9, :cond_72

    .line 1924
    const/16 v60, 0x3

    goto/16 :goto_d

    .line 1926
    :cond_72
    # getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_WivuThread_lock:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1900()Ljava/lang/Object;

    move-result-object v71

    monitor-enter v71
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1927
    :try_start_1e
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    if-eqz v69, :cond_73

    .line 1928
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWivuThread:Lcom/htc/server/WirelessDisplayService$WivuThread;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2000()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v69

    const/16 v72, 0x0

    move-object/from16 v0, v69

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1929
    :cond_73
    monitor-exit v71

    .line 1930
    const/16 v60, 0x1

    .line 1931
    const/16 v21, -0x4

    goto/16 :goto_d

    .line 1929
    :catchall_c
    move-exception v69

    monitor-exit v71
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :try_start_1f
    throw v69
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1955
    .end local v9    # "app2":I
    .end local v21    # "err":I
    .end local v60    # "state":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # invokes: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7600(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    const-string v71, "/data/misc/wifidisplay.conf"

    # invokes: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v70 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    # setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1959
    :sswitch_1d
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$7900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, ", arg:"

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-nez v69, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7900(Lcom/htc/server/WirelessDisplayService;)I

    move-result v69

    if-lez v69, :cond_75

    .line 1961
    const/16 v69, 0x70

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v41

    .line 1962
    .local v41, "msgUseWfdService":Landroid/os/Message;
    const-wide/16 v70, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1963
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_74

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "WfdService not ready, resent, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # operator-- for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$7910(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1965
    .end local v41    # "msgUseWfdService":Landroid/os/Message;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-eqz v69, :cond_79

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0xa

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7902(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1967
    # getter for: Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_78

    .line 1968
    # getter for: Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1969
    const/16 v69, 0x13

    const/16 v70, 0x0

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v54

    .line 1970
    .local v54, "resetWFD_Flag":Landroid/os/Message;
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const-wide/32 v70, 0x249f0

    move-object/from16 v0, v69

    move-object/from16 v1, v54

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1971
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_76

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Use WfdService, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    :cond_76
    packed-switch v10, :pswitch_data_2

    goto/16 :goto_0

    .line 1974
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .line 1975
    .local v16, "defgDongle":Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_77

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x3

    # invokes: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$8000(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v16

    # invokes: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$8100(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1980
    :cond_77
    const-string v69, "WirelessDisplayService"

    const-string v70, "Resend HANDLE_FINGER_GESTURE again due to timing cause default Dongle is null"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    const/16 v69, 0x6f

    const/16 v70, 0x1

    const/16 v71, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1993
    .end local v16    # "defgDongle":Lcom/htc/service/DongleInfo;
    .end local v54    # "resetWFD_Flag":Landroid/os/Message;
    :cond_78
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_0

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1996
    :cond_79
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_7a

    const-string v69, "WirelessDisplayService"

    const-string v70, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v69

    if-nez v69, :cond_0

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0xa

    # setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$7902(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1999
    const/16 v69, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    .line 2000
    const/16 v69, 0xb

    const/16 v70, -0x1

    const/16 v71, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2001
    const/16 v69, 0x70

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2006
    :sswitch_1e
    move v4, v10

    .line 2007
    .local v4, "absoluteDirection":I
    move/from16 v51, v11

    .line 2008
    .local v51, "relativeDirection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v51

    # invokes: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$8200(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v22

    .line 2009
    .local v22, "fingerIndicator":I
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService$H;->hasMessages(I)Z

    move-result v69

    if-nez v69, :cond_0

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, v69

    move/from16 v1, v22

    # setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$8302(Lcom/htc/server/WirelessDisplayService;I)I

    .line 2016
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 2018
    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    # getter for: Lcom/htc/server/WirelessDisplayService;->mHandler:Lcom/htc/server/WirelessDisplayService$H;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2200()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v70

    const/16 v71, 0x6f

    const/16 v72, 0x1

    move-object/from16 v0, v70

    move/from16 v1, v71

    move/from16 v2, v22

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v70

    const-wide/16 v72, 0x3e8

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    move-wide/from16 v2, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2029
    .end local v4    # "absoluteDirection":I
    .end local v22    # "fingerIndicator":I
    .end local v51    # "relativeDirection":I
    :sswitch_1f
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_7b

    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v11, v0, :cond_7b

    .line 2030
    const-string v69, "WirelessDisplayService"

    const-string v70, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2032
    :cond_7b
    const/16 v69, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 2033
    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanbyFingerGesture:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2034
    const/16 v69, 0x3

    move/from16 v0, v69

    if-ne v10, v0, :cond_7e

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x1

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 2036
    const/16 v69, 0x1

    move/from16 v0, v69

    new-array v15, v0, [Ljava/lang/Object;

    .line 2037
    .local v15, "debug2":[Ljava/lang/Object;
    const/16 v69, 0x0

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "curMirrStatus: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v71

    invoke-virtual/range {v71 .. v71}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    aput-object v70, v15, v69

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const-string v70, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    # invokes: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v15}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_7d

    .line 2040
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_7c

    const-string v69, "WirelessDisplayService"

    const-string v70, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    invoke-virtual/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 2043
    :cond_7d
    const-string v69, "WirelessDisplayService"

    const-string v70, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    new-instance v47, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v47

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v47, "notifyDLNA_MirrrorOff":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2049
    .end local v15    # "debug2":[Ljava/lang/Object;
    .end local v47    # "notifyDLNA_MirrrorOff":Landroid/content/Intent;
    :cond_7e
    const/16 v69, 0x1

    move/from16 v0, v69

    if-ne v10, v0, :cond_0

    .line 2051
    # getter for: Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_80

    .line 2052
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_7f

    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_7f
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/content/Intent;

    const-string v71, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v70 .. v71}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_20} :catch_7

    .line 2060
    :cond_80
    :goto_f
    const/16 v69, 0x3

    move/from16 v0, v50

    move/from16 v1, v69

    if-eq v0, v1, :cond_81

    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_83

    .line 2061
    :cond_81
    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2062
    .restart local v32    # "mirrorResultIntent":Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "SUCCESS"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2064
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v69

    if-eqz v69, :cond_82

    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "mirror mode status: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v70

    const-string v71, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_82
    const/16 v69, 0x7

    move/from16 v0, v50

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    # getter for: Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-nez v69, :cond_0

    .line 2066
    const-string v69, "WirelessDisplayService"

    const-string v70, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    new-instance v46, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v46

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v46, "notifyDLNA_Mirror_Replace":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2055
    .end local v32    # "mirrorResultIntent":Landroid/content/Intent;
    .end local v46    # "notifyDLNA_Mirror_Replace":Landroid/content/Intent;
    :catch_7
    move-exception v55

    .line 2056
    .local v55, "se":Ljava/lang/SecurityException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 2073
    .end local v55    # "se":Ljava/lang/SecurityException;
    :cond_83
    new-instance v45, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2074
    .local v45, "notifyConfigerTool":Landroid/content/Intent;
    new-instance v44, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v44

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2075
    .local v44, "notifyConfigToolToConfig":Landroid/content/Intent;
    new-instance v48, Landroid/content/Intent;

    const-string v69, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v48

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2076
    .local v48, "notifyNormalConfigTool":Landroid/content/Intent;
    const/high16 v69, 0x10000000

    move-object/from16 v0, v45

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2077
    const-string v69, "caller"

    const-string v70, "3finger"

    move-object/from16 v0, v45

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2078
    const/high16 v69, 0x10000000

    move-object/from16 v0, v44

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2079
    const/high16 v69, 0x10000000

    move-object/from16 v0, v48

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2080
    const-string v69, "caller"

    const-string v70, "3finger"

    move-object/from16 v0, v48

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2081
    new-instance v32, Landroid/content/Intent;

    const-string v69, "com.htc.intent.action.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .restart local v32    # "mirrorResultIntent":Landroid/content/Intent;
    const-string v69, "RESULT"

    const-string v70, "FAIL"

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    move-object/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v69

    if-nez v69, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_85

    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleInfoCache:Ljava/util/Hashtable;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/Hashtable;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/Hashtable;->size()I

    move-result v69

    if-nez v69, :cond_87

    .line 2085
    :cond_85
    const-string v69, "WirelessDisplayService"

    const-string v70, "FINGER GESTURE, No Dongle Found(WIFI DISABLED)"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    # getter for: Lcom/htc/server/WirelessDisplayService;->preload_DLNA:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$1200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_86

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2090
    :cond_86
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_21} :catch_8

    goto/16 :goto_0

    .line 2091
    :catch_8
    move-exception v7

    .line 2092
    .local v7, "ae":Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2096
    .end local v7    # "ae":Landroid/content/ActivityNotFoundException;
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v69

    if-eqz v69, :cond_8e

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v18

    .line 2098
    .local v18, "dfgDongle":Lcom/htc/service/DongleInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v69

    if-eqz v69, :cond_88

    .line 2099
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v69, v0

    if-nez v69, :cond_0

    .line 2101
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_22} :catch_9

    goto/16 :goto_0

    .line 2102
    :catch_9
    move-exception v7

    .line 2103
    .restart local v7    # "ae":Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2106
    .end local v7    # "ae":Landroid/content/ActivityNotFoundException;
    :cond_88
    if-eqz v18, :cond_0

    .line 2107
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x4

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_89

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x1

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_8a

    .line 2108
    :cond_89
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2109
    .restart local v12    # "bundle":Landroid/os/Bundle;
    const-string v69, "DONGLE_MAC"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    move-object/from16 v70, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v70

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2112
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_23} :catch_a

    goto/16 :goto_0

    .line 2113
    :catch_a
    move-exception v7

    .line 2114
    .restart local v7    # "ae":Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2116
    .end local v7    # "ae":Landroid/content/ActivityNotFoundException;
    .end local v12    # "bundle":Landroid/os/Bundle;
    :cond_8a
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x2

    move/from16 v0, v69

    move/from16 v1, v70

    if-eq v0, v1, :cond_8b

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v69, v0

    const/16 v70, 0x3

    move/from16 v0, v69

    move/from16 v1, v70

    if-ne v0, v1, :cond_0

    .line 2117
    :cond_8b
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    move/from16 v69, v0

    if-eqz v69, :cond_8d

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v69

    if-nez v69, :cond_8c

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    new-instance v70, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v72, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mSupportKDDI:Z
    invoke-static/range {v72 .. v72}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v72

    invoke-direct/range {v70 .. v72}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;-><init>(Landroid/content/Context;Z)V

    # setter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$8702(Lcom/htc/server/WirelessDisplayService;Lcom/htc/server/medialinkdialog/DongleConnectedDialog;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    .line 2120
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mDongleConnectedDialog:Lcom/htc/server/medialinkdialog/DongleConnectedDialog;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8700(Lcom/htc/server/WirelessDisplayService;)Lcom/htc/server/medialinkdialog/DongleConnectedDialog;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/medialinkdialog/DongleConnectedDialog;->show()V

    goto/16 :goto_0

    .line 2123
    :cond_8d
    # getter for: Lcom/htc/server/WirelessDisplayService;->wfdservice_usable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v69

    if-eqz v69, :cond_0

    .line 2125
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/content/Intent;

    const-string v71, "com.htc.wifidisplay.IR_CONTROL"

    invoke-direct/range {v70 .. v71}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v69 .. v70}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_24} :catch_b

    goto/16 :goto_0

    .line 2126
    :catch_b
    move-exception v57

    .line 2127
    .local v57, "sex":Ljava/lang/SecurityException;
    const-string v69, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "IR_CONTROL Services occur SecurityException "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, v70

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2142
    .end local v18    # "dfgDongle":Lcom/htc/service/DongleInfo;
    .end local v57    # "sex":Ljava/lang/SecurityException;
    :cond_8e
    const-string v69, "sys.wfd.autoTestFlag"

    const-string v70, ""

    invoke-static/range {v69 .. v70}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    # setter for: Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$8802(Ljava/lang/String;)Ljava/lang/String;

    .line 2143
    # getter for: Lcom/htc/server/WirelessDisplayService;->autoTestFlag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$8800()Ljava/lang/String;

    move-result-object v69

    const-string v70, "reconnect"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_8f

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v69

    if-nez v69, :cond_0

    .line 2145
    const-string v69, "WirelessDisplayService"

    const-string v70, "wifi scan fail!"

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2148
    :cond_8f
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    # getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_25} :catch_c

    goto/16 :goto_0

    .line 2149
    :catch_c
    move-exception v7

    .line 2150
    .restart local v7    # "ae":Landroid/content/ActivityNotFoundException;
    const-string v69, "WirelessDisplayService"

    const-string v70, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v69 .. v70}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 949
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x4 -> :sswitch_c
        0x5 -> :sswitch_10
        0x6 -> :sswitch_e
        0x9 -> :sswitch_16
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xd -> :sswitch_15
        0xf -> :sswitch_1c
        0x10 -> :sswitch_f
        0x11 -> :sswitch_7
        0x13 -> :sswitch_13
        0x14 -> :sswitch_d
        0x15 -> :sswitch_18
        0x1f -> :sswitch_19
        0x29 -> :sswitch_1b
        0x33 -> :sswitch_1a
        0x3d -> :sswitch_17
        0x6f -> :sswitch_1f
        0x70 -> :sswitch_1d
        0x71 -> :sswitch_1e
        0x72 -> :sswitch_b
        0x73 -> :sswitch_14
        0x74 -> :sswitch_4
        0x75 -> :sswitch_5
        0xc9 -> :sswitch_0
        0xde -> :sswitch_8
        0x12f -> :sswitch_2
        0x130 -> :sswitch_1
        0x14d -> :sswitch_3
    .end sparse-switch

    .line 951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1010
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1972
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
