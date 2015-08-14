.class Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;
.super Ljava/lang/Object;
.source "HtcNfcEnablePromptActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HtcNfcEnablePromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;
    .param p2, "x1"    # Lcom/android/nfc/HtcNfcEnablePromptActivity$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$600(Lcom/android/nfc/HtcNfcEnablePromptActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I
    invoke-static {v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$700(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog timeout in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I
    invoke-static {v3}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$700(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    const v2, 0x3070193

    iget-object v3, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I
    invoke-static {v3}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$700(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/nfc/HtcNfcEnablePromptActivity;->getAllCapsLocaleIfNeeded(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$800(Lcom/android/nfc/HtcNfcEnablePromptActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "deny_string":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mDenyButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$900(Lcom/android/nfc/HtcNfcEnablePromptActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # operator-- for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I
    invoke-static {v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$710(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I

    .line 265
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$600(Lcom/android/nfc/HtcNfcEnablePromptActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    .end local v0    # "deny_string":Ljava/lang/String;
    :goto_0
    return-void

    .line 267
    :cond_0
    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dialog timeout."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/nfc/HtcNfcEnablePromptActivity;->dismissDialog(Z)V
    invoke-static {v1, v2}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$500(Lcom/android/nfc/HtcNfcEnablePromptActivity;Z)V

    goto :goto_0
.end method
