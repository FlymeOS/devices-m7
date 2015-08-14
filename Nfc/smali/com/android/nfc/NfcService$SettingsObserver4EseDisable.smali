.class Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;
.super Landroid/database/ContentObserver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver4EseDisable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    .line 1188
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1189
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1205
    const/4 v0, 0x0

    .line 1208
    .local v0, "bIsEseEnabled":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->PROVIDER_KEY_EMBEDDED_SECURE_ELEMENT_ENABLED:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1211
    const-string v1, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsEseEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-static {v0}, Lcom/android/nfc/HtcUtils;->setEnableDisableEseSelection(Z)V

    .line 1216
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v1, Lcom/android/nfc/NfcService;->NXP_ESE_SWITCH_INFO:Ljava/lang/String;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/nfc/HtcUtils;->writeNfcAttribute(Ljava/lang/String;Z)V

    .line 1217
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "nfc_on"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    const-string v1, "NfcService"

    const-string v4, "Refresh NFC state to apply change!"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v4, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v2, [Ljava/lang/Integer;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1220
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v4, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v4, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v1, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1222
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 1216
    goto :goto_0
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 1192
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "[SettingsObserver4EseDisable] startObserving()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1195
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->PROVIDER_KEY_EMBEDDED_SECURE_ELEMENT_ENABLED:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1196
    return-void
.end method

.method stopObserving()V
    .locals 2

    .prologue
    .line 1199
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "[SettingsObserver4EseDisable] stopObserving()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$SettingsObserver4EseDisable;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1201
    return-void
.end method
