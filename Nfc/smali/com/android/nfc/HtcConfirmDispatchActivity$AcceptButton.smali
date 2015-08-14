.class Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;
.super Ljava/lang/Object;
.source "HtcConfirmDispatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HtcConfirmDispatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/HtcConfirmDispatchActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/HtcConfirmDispatchActivity;Lcom/android/nfc/HtcConfirmDispatchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/HtcConfirmDispatchActivity;
    .param p2, "x1"    # Lcom/android/nfc/HtcConfirmDispatchActivity$1;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;-><init>(Lcom/android/nfc/HtcConfirmDispatchActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "view"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 312
    # getter for: Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcConfirmDispatchActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAcceptButtonClicked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    # invokes: Lcom/android/nfc/HtcConfirmDispatchActivity;->saveDoNotAskAgainState()V
    invoke-static {v0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->access$300(Lcom/android/nfc/HtcConfirmDispatchActivity;)V

    .line 315
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    # invokes: Lcom/android/nfc/HtcConfirmDispatchActivity;->launchTarget()V
    invoke-static {v0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->access$400(Lcom/android/nfc/HtcConfirmDispatchActivity;)V

    .line 316
    return-void
.end method
