.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeactingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "DeactingState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 463
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const v4, 0x4400b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 465
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 472
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 546
    :pswitch_0
    const/4 v0, 0x0

    .line 549
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 525
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "DeactingState: EVENT_DATA_DETACHED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 528
    const/4 v0, 0x1

    .line 529
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 533
    .end local v0    # "retVal":Z
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "DeactingState: REQ_DISCONNECT_ALL, already deacting."

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44009

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 537
    const/4 v0, 0x1

    .line 538
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x44008
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
