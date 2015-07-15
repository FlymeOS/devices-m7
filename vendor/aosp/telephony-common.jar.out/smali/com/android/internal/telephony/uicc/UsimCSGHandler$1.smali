.class Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsimCSGHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UsimCSGHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

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

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "status":Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    const-string v3, "UsimCSGHandler"

    const-string v4, "get INTENT_VALUE_ICC_HOT_SWAP_ABSENT"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 737
    .end local v2    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    const-string v3, "com.htc.telephony.intent.action.csg_2hours_expired"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 699
    const-string v3, "UsimCSGHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTENT_CSG_2HOURS_EXPIRED : trigger another periodic search and counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v5, v5, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->bManualSearchDoing:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$100(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v3, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->CSGAlgorithmState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 702
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->searchIsFailure()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$200(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 708
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v4, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 709
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iget v3, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    const/4 v4, 0x6

    if-lt v3, v4, :cond_4

    .line 711
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 713
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->ForbiddenCSGIDList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$400(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 715
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iput v6, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetForbiddenCSGIDListCounter:I

    .line 717
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    iput-boolean v6, v3, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->retryScanCSGID:Z

    .line 718
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->triggerPeriodicSearch()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$500(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto :goto_0

    .line 721
    :cond_5
    const-string v3, "com.htc.telephony.intent.action.csg_10secs_expired"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 722
    const-string v3, "UsimCSGHandler"

    const-string v4, "INTENT_CSG_10SECS_EXPIRED : trigger another CSG ID search"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->resetSearchVariable()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$300(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    .line 724
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->requestCSGIDList()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$600(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto/16 :goto_0

    .line 726
    :cond_6
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    const-string v3, "UsimCSGHandler"

    const-string v4, "get ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # getter for: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$700(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 731
    .local v1, "airplaneMode":I
    if-lez v1, :cond_0

    .line 733
    const-string v3, "UsimCSGHandler"

    const-string v4, "airplaneMode ON"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimCSGHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UsimCSGHandler;

    # invokes: Lcom/android/internal/telephony/uicc/UsimCSGHandler;->clearAllVariableWhenSIMAbsent()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UsimCSGHandler;->access$000(Lcom/android/internal/telephony/uicc/UsimCSGHandler;)V

    goto/16 :goto_0
.end method
