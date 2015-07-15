.class Lcom/android/server/display/HtcAutoBrightnessCtrl$7;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 857
    if-nez p2, :cond_1

    .line 858
    const-string v7, "HABCtrl"

    const-string v8, "mBrighterOnlyReceiver intent is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 865
    const-string v7, "HABCtrl"

    const-string v8, "onReceive, action is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_2
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 870
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_3
    const-string v7, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 875
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 877
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 878
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/32 v10, 0xea60

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 882
    const-string v7, "HABCtrl"

    const-string v8, "onReceive: ON, Skip"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_4
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$902(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    .line 890
    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 891
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->CAMERA_APP_MIN_DISPLAY_BRIGHTNESS_VALUE:I
    invoke-static {}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1300()I

    move-result v8

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1202(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    .line 897
    :goto_1
    const-string v7, "backlight.delay"

    const/16 v8, 0x14

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 898
    .local v3, "enteringDelay":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraEnteringDelay:I
    invoke-static {v7, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1402(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    .line 900
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getCurrentBrightness()I

    move-result v1

    .line 901
    .local v1, "curLcdValue":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->getTargetBrightness()I

    move-result v2

    .line 903
    .local v2, "endLcdValue":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I

    move-result v5

    .line 904
    .local v5, "newLcdValue":I
    if-le v5, v1, :cond_7

    .line 905
    :goto_2
    if-le v5, v2, :cond_8

    .line 907
    :goto_3
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 908
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 919
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 920
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON, Skip. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 893
    .end local v1    # "curLcdValue":I
    .end local v2    # "endLcdValue":I
    .end local v3    # "enteringDelay":I
    .end local v5    # "newLcdValue":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const-string v8, "entering.screen.brightness"

    const/16 v9, 0x7f

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1202(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    goto/16 :goto_1

    .restart local v1    # "curLcdValue":I
    .restart local v2    # "endLcdValue":I
    .restart local v3    # "enteringDelay":I
    .restart local v5    # "newLcdValue":I
    :cond_7
    move v5, v1

    .line 904
    goto/16 :goto_2

    :cond_8
    move v5, v2

    .line 905
    goto/16 :goto_3

    .line 926
    :cond_9
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1700(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 927
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl$Callbacks;->setScreenBrightnessMode(I)V

    .line 930
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/32 v10, 0xea60

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 935
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 936
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    .line 937
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BRIGHTER_ONLY_ON, set CFUB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    :cond_b
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v7, v5}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1900(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)I

    move-result v6

    .line 943
    .local v6, "target":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$2000(Lcom/android/server/display/HtcAutoBrightnessCtrl;II)V

    goto/16 :goto_0

    .line 945
    .end local v1    # "curLcdValue":I
    .end local v2    # "endLcdValue":I
    .end local v3    # "enteringDelay":I
    .end local v5    # "newLcdValue":I
    .end local v6    # "target":I
    :cond_c
    const-string v7, "com.htc.intent.action.CAMERA_BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 947
    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->USE_NEW_BACKLIGHT_MECHANISM:Z
    invoke-static {}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1700(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 948
    const-string v7, "backlight.delay"

    const/16 v8, 0x28

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 949
    .local v4, "leavingDelay":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    new-instance v8, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {v8, v9, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;-><init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    .line 950
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mBrighterOnlyOffCallbacks:Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;
    invoke-static {v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Lcom/android/server/display/HtcAutoBrightnessCtrl$BrighterOnlyOffTimeoutTask;

    move-result-object v8

    const-wide/16 v10, 0x1f40

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 951
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 952
    const-string v7, "HABCtrl"

    const-string v8, "BRIGHTER_ONLY_OFF delay 8000"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 958
    .end local v4    # "leavingDelay":I
    :cond_d
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mCameraForceUpdateBrightness:Z
    invoke-static {v7, v8}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1802(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)Z

    .line 960
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 964
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$2100(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 968
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 969
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 970
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF, Skip. ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mDayDreamMode:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$1600(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 975
    :cond_e
    const-string v7, "backlight.delay"

    const/16 v8, 0x28

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 976
    .restart local v4    # "leavingDelay":I
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 977
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_f
    iget-object v7, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$7;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v7, v4}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$2200(Lcom/android/server/display/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    .line 983
    .end local v4    # "leavingDelay":I
    :cond_10
    const-string v7, "HABCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
