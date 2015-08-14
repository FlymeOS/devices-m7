.class Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;
.super Ljava/lang/Object;
.source "HtcNfcEnablePromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HtcNfcEnablePromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;
    .param p2, "x1"    # Lcom/android/nfc/HtcNfcEnablePromptActivity$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 246
    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog dismiss."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/nfc/HtcNfcEnablePromptActivity;->dismissDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$500(Lcom/android/nfc/HtcNfcEnablePromptActivity;Z)V

    .line 248
    return-void
.end method
