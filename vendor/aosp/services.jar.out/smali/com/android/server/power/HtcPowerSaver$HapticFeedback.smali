.class final Lcom/android/server/power/HtcPowerSaver$HapticFeedback;
.super Lcom/android/server/power/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HapticFeedback"
.end annotation


# instance fields
.field private final DEFAULT_N_HAPTIC_FEEDBACK:I

.field private final DEFAULT_PSAVER_APPLIED:I

.field private final KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String;

.field private final KEY_PSAVER_APPLIED:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/android/server/power/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/power/HtcPowerSaver;Landroid/content/Context;)V
    .locals 8
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1208
    iput-object p1, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->this$0:Lcom/android/server/power/HtcPowerSaver;

    .line 1209
    const-string v2, "HapticFeedback"

    const-string v3, "powersaver_haptic_feedback"

    const-string v5, "sys.psaver.haptic"

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/HtcPowerSaver$Feature;-><init>(Lcom/android/server/power/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 1199
    const-string v0, "psaver_normal_haptic_feedback"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String;

    .line 1200
    iput v4, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->DEFAULT_N_HAPTIC_FEEDBACK:I

    .line 1202
    const-string v0, "psaver_haptic_applied"

    iput-object v0, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->KEY_PSAVER_APPLIED:Ljava/lang/String;

    .line 1203
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->DEFAULT_PSAVER_APPLIED:I

    .line 1205
    iput-object v7, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    .line 1206
    iput-object v7, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 1210
    iput-object p2, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    .line 1211
    return-void
.end method

.method private setApplied(Z)V
    .locals 5
    .param p1, "applied"    # Z

    .prologue
    .line 1242
    iget-object v2, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1245
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "psaver_haptic_applied"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_1
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void

    .line 1245
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1246
    :catch_0
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplied: Exception caught. Skip setting applied variable. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSysSettings(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1216
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSysSettings: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :goto_0
    return-void

    .line 1219
    :cond_0
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setSysSettings: Set fail. Skip."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wasApplied()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1224
    const/4 v2, 0x0

    .line 1227
    .local v2, "wasApplied":Z
    iget-object v5, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1230
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "psaver_haptic_applied"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    :goto_0
    move v3, v2

    .line 1236
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 1230
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v1

    .line 1232
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wasApplied: Exception caught. return true to skip applying power save move for this feature. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1276
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->wasApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings: was applied. Skip."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :goto_0
    return v2

    .line 1281
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->setApplied(Z)V

    .line 1283
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applyPowerSaverSettings."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected restoreSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1289
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->wasApplied()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1290
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "restoreSystemSettings: was not applied. Skip."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :goto_0
    return v6

    .line 1294
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1295
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    .line 1298
    .local v2, "normalValue":I
    :try_start_0
    const-string v3, "psaver_normal_haptic_feedback"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1303
    :goto_1
    invoke-direct {p0, v6}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->setApplied(Z)V

    .line 1305
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSystemSettings. normalValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSystemSettings: Exception caught. Skip getting normal setting. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected saveSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1255
    invoke-direct {p0}, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->wasApplied()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1256
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "saveSystemSettings: was applied. Skip."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return v6

    .line 1260
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/HtcPowerSaver$HapticFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1261
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "haptic_feedback_enabled"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1264
    .local v2, "sysValue":I
    :try_start_0
    const-string v3, "psaver_normal_haptic_feedback"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSystemSettings: sysValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v1

    .line 1266
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/power/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/power/HtcPowerSaver$Feature;->access$600(Lcom/android/server/power/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveSystemSettings: Exception caught. Skip saving normal setting. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
