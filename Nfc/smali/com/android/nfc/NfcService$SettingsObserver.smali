.class Lcom/android/nfc/NfcService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/nfc/NfcService$SettingsObserver;->this$0:Lcom/android/nfc/NfcService;

    .line 1162
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1163
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/nfc/NfcService$SettingsObserver;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->refreshAirplaneModeSettings()V

    .line 1182
    return-void
.end method

.method startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1166
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "[SettingsObserver] startObserving()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$SettingsObserver;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1169
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "airplane_mode_radios"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1170
    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1171
    return-void
.end method

.method stopObserving()V
    .locals 2

    .prologue
    .line 1174
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v1, "[SettingsObserver] stopObserving()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$SettingsObserver;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1176
    return-void
.end method
