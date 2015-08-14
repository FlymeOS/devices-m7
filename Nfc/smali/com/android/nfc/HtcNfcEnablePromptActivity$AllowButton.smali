.class Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;
.super Ljava/lang/Object;
.source "HtcNfcEnablePromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/HtcNfcEnablePromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;


# direct methods
.method private constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;
    .param p2, "x1"    # Lcom/android/nfc/HtcNfcEnablePromptActivity$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "view"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 222
    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onAllowButtonClicked."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 227
    .local v1, "nfcService":Landroid/nfc/INfcAdapter;
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "nfcService":Landroid/nfc/INfcAdapter;
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;->this$0:Lcom/android/nfc/HtcNfcEnablePromptActivity;

    const/4 v3, 0x1

    # invokes: Lcom/android/nfc/HtcNfcEnablePromptActivity;->dismissDialog(Z)V
    invoke-static {v2, v3}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$500(Lcom/android/nfc/HtcNfcEnablePromptActivity;Z)V

    .line 232
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onAllowButtonClick: Exception caught."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
