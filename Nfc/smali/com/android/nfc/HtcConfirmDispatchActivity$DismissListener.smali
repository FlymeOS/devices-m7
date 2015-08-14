.class Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;
.super Ljava/lang/Object;
.source "HtcConfirmDispatchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HtcConfirmDispatchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/HtcConfirmDispatchActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/HtcConfirmDispatchActivity;Lcom/android/nfc/HtcConfirmDispatchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/HtcConfirmDispatchActivity;
    .param p2, "x1"    # Lcom/android/nfc/HtcConfirmDispatchActivity$1;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;-><init>(Lcom/android/nfc/HtcConfirmDispatchActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 322
    # getter for: Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcConfirmDispatchActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog dismiss."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    # invokes: Lcom/android/nfc/HtcConfirmDispatchActivity;->saveDoNotAskAgainState()V
    invoke-static {v0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->access$300(Lcom/android/nfc/HtcConfirmDispatchActivity;)V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;->this$0:Lcom/android/nfc/HtcConfirmDispatchActivity;

    invoke-virtual {v0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->finish()V

    .line 327
    return-void
.end method
