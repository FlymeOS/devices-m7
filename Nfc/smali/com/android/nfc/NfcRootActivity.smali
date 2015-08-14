.class public Lcom/android/nfc/NfcRootActivity;
.super Landroid/app/Activity;
.source "NfcRootActivity.java"


# static fields
.field static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    const-string v3, "launchIntent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    const-string v3, "launchIntent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 36
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 39
    :try_start_0
    invoke-static {v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isNeedToHandleThis(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/nfc/HtcConfirmDispatchActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v2, "tempIntent":Landroid/content/Intent;
    const-string v3, "launchIntent"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    move-object v1, v2

    .line 47
    .end local v2    # "tempIntent":Landroid/content/Intent;
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 53
    return-void

    .line 48
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
