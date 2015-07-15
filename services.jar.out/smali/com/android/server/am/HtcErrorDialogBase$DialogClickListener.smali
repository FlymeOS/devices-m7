.class Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;
.super Ljava/lang/Object;
.source "HtcErrorDialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcErrorDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogClickListener"
.end annotation


# instance fields
.field private final mMsgId:I

.field final synthetic this$0:Lcom/android/server/am/HtcErrorDialogBase;


# direct methods
.method public constructor <init>(Lcom/android/server/am/HtcErrorDialogBase;I)V
    .locals 0
    .param p2, "msgId"    # I

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p2, p0, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;->mMsgId:I

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    # getter for: Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/HtcErrorDialogBase;->access$000(Lcom/android/server/am/HtcErrorDialogBase;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;->mMsgId:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/HtcErrorDialogBase$DialogClickListener;->this$0:Lcom/android/server/am/HtcErrorDialogBase;

    # getter for: Lcom/android/server/am/HtcErrorDialogBase;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/HtcErrorDialogBase;->access$000(Lcom/android/server/am/HtcErrorDialogBase;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    return-void
.end method
