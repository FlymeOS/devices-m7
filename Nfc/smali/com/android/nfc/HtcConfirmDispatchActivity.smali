.class public Lcom/android/nfc/HtcConfirmDispatchActivity;
.super Landroid/app/Activity;
.source "HtcConfirmDispatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/HtcConfirmDispatchActivity$1;,
        Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;,
        Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final PREF_URL_NDEF_PROMPT:Ljava/lang/String; = "url_ndef_prompt"

.field private static final PREF_URL_NDEF_PROMPT_DEFAULT:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static mUri:Landroid/net/Uri;


# instance fields
.field private mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nfc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/nfc/HtcConfirmDispatchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/HtcConfirmDispatchActivity;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 319
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/HtcConfirmDispatchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HtcConfirmDispatchActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->saveDoNotAskAgainState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/HtcConfirmDispatchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HtcConfirmDispatchActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->launchTarget()V

    return-void
.end method

.method protected static isNeedToHandleThis(Landroid/content/Intent;)Z
    .locals 8
    .param p0, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getSenseVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    move v1, v3

    .line 61
    .local v1, "isSense60OrAbove":Z
    :goto_0
    if-nez v1, :cond_2

    .line 72
    .end local v1    # "isSense60OrAbove":Z
    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    .line 60
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/HtcConfirmDispatchActivity;->DBG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v5, "isNeedToHandleThis: Exception caught."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isValidUriOrPoster(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 70
    goto :goto_1
.end method

.method private static isSmartPosterRecord(Landroid/nfc/NdefRecord;)Z
    .locals 7
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 130
    .local v2, "isTnfCorrect":Z
    :goto_0
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 131
    .local v1, "isRtdCorrect":Z
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 132
    :cond_0
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSmartPosterRecord: isTnfCorrect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isRtdCorrect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 141
    .end local v1    # "isRtdCorrect":Z
    .end local v2    # "isTnfCorrect":Z
    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 129
    goto :goto_0

    .line 136
    .restart local v1    # "isRtdCorrect":Z
    .restart local v2    # "isTnfCorrect":Z
    :cond_2
    new-instance v5, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    .end local v1    # "isRtdCorrect":Z
    .end local v2    # "isTnfCorrect":Z
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v5, "isSmartPosterRecord: not SmartPoster"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 141
    goto :goto_1
.end method

.method private static isUri(Landroid/nfc/NdefRecord;)Z
    .locals 4
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v1, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v3, "isUri: not uri."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isUrlPromptEnabledInACC()Z
    .locals 6

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "enable":Z
    const/4 v0, 0x0

    .line 181
    .local v0, "config":I
    :try_start_0
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getUserPromptUIOption()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 188
    :goto_1
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUrlPromptEnabledInACC: enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v2

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "isUrlPromptEnabledInACC: Exception caught."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isUrlPromptEnabledInSettings()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 194
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v0

    .line 195
    .local v0, "bCheckEnabledInSettings":Z
    if-eqz v0, :cond_2

    move v2, v4

    .line 196
    .local v2, "enable":I
    :goto_0
    const/4 v3, 0x0

    .line 197
    .local v3, "value":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_nfc_security_reminder_enabled"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_0

    .line 202
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 216
    .end local v2    # "enable":I
    :cond_0
    :goto_1
    sget-object v4, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUrlPromptEnabledInSettings: enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 218
    :cond_1
    :goto_2
    return v4

    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 195
    goto :goto_0

    .line 204
    .restart local v2    # "enable":I
    .restart local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/nfc/HtcConfirmDispatchActivity;->DBG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v6, "isUrlPromptEnabledInSettings: Exception caught."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "url_ndef_prompt"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .local v2, "enable":Z
    goto :goto_1

    .line 212
    .local v2, "enable":I
    :catch_1
    move-exception v1

    .line 213
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/nfc/HtcConfirmDispatchActivity;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v5, "isUrlPromptEnabledInSettings: Exception caught."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static isValidUriOrPoster(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 77
    .local v1, "rawMsgs":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 78
    .local v0, "msg":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    check-cast v0, Landroid/nfc/NdefMessage;

    .line 86
    .restart local v0    # "msg":Landroid/nfc/NdefMessage;
    :cond_0
    invoke-static {v0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isValidUriOrPoster(Landroid/nfc/NdefMessage;)Z

    move-result v2

    return v2
.end method

.method protected static isValidUriOrPoster(Landroid/nfc/NdefMessage;)Z
    .locals 6
    .param p0, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x0

    .line 90
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 91
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    aget-object v1, v3, v2

    .line 92
    .local v1, "firstRecord":Landroid/nfc/NdefRecord;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidUriOrPoster: record size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tnf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndefUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ndefMimeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    .line 99
    :try_start_0
    invoke-static {v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isUri(Landroid/nfc/NdefRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "isValidUriOrPoster: is uri"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->parseUriFromUriRecord(Landroid/nfc/NdefRecord;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    .line 107
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    :cond_2
    const/4 v2, 0x1

    .line 115
    .end local v1    # "firstRecord":Landroid/nfc/NdefRecord;
    :goto_1
    return v2

    .line 102
    .restart local v1    # "firstRecord":Landroid/nfc/NdefRecord;
    :cond_3
    invoke-static {v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isSmartPosterRecord(Landroid/nfc/NdefRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "isValidUriOrPoster: is poster"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->parseUriFromSmartPosterRecord(Landroid/nfc/NdefRecord;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "isValidUriOrPoster: Exception caught."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "firstRecord":Landroid/nfc/NdefRecord;
    :cond_4
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "isValidUriOrPoster: not uri nor poster"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private launchTarget()V
    .locals 6

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v3, "launchIntent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const-string v3, "launchIntent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 232
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 234
    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/HtcConfirmDispatchActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->finish()V

    .line 245
    return-void

    .line 235
    .restart local v2    # "launchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "launchTarget: activity not found."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "launchTarget: launchIntent is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_1
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchTarget: intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseUriFromSmartPosterRecord(Landroid/nfc/NdefRecord;)Landroid/net/Uri;
    .locals 8
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 151
    :try_start_0
    new-instance v5, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .local v5, "subRecords":Landroid/nfc/NdefMessage;
    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 157
    .local v4, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 158
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v6

    .line 161
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "r":Landroid/nfc/NdefRecord;
    .end local v5    # "subRecords":Landroid/nfc/NdefMessage;
    :goto_1
    return-object v6

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v7, "parseUriFromSmartPosterRecord: Exception caught."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const-string v6, ""

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "r":Landroid/nfc/NdefRecord;
    .restart local v5    # "subRecords":Landroid/nfc/NdefMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v4    # "r":Landroid/nfc/NdefRecord;
    :cond_1
    const-string v6, ""

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1
.end method

.method private static parseUriFromUriRecord(Landroid/nfc/NdefRecord;)Landroid/net/Uri;
    .locals 1
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private saveDoNotAskAgainState()V
    .locals 6

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "checked":Z
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    :goto_0
    return-void

    .line 296
    :cond_0
    :try_start_0
    const-class v4, Lcom/htc/dialog/HtcAlertDialog;

    const-string v5, "isCheckBoxChecked"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 297
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_1
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDoNotAskAgainState: checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/nfc/HtcConfirmDispatchActivity;->setUserPromptInPreferences(Z)V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v4, "saveDoNotAskAgainState: Exception caught."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v0, 0x0

    goto :goto_1

    .line 306
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private setUserPromptInPreferences(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "url_ndef_prompt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    :cond_0
    return-void
.end method

.method private showAlertDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 250
    .local v6, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, "dialogBuilder":Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v7, 0x1040014

    invoke-virtual {v2, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 252
    const v7, 0x307018d

    new-array v8, v11, [Ljava/lang/Object;

    sget-object v9, Lcom/android/nfc/HtcConfirmDispatchActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 255
    const v7, 0x307018e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "confirm_string":Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    sget-object v7, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v8, "showAlertDialog: isInAllCapsLocale."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_0
    new-instance v7, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;

    invoke-direct {v7, p0, v12}, Lcom/android/nfc/HtcConfirmDispatchActivity$AcceptButton;-><init>(Lcom/android/nfc/HtcConfirmDispatchActivity;Lcom/android/nfc/HtcConfirmDispatchActivity$1;)V

    invoke-virtual {v2, v1, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 266
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v7

    if-nez v7, :cond_1

    .line 268
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v10

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v11

    const-class v7, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    aput-object v7, v5, v13

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v14

    .line 269
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/Object;

    const v7, 0x307018f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v11

    aput-object v12, v0, v13

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v14

    .line 271
    .local v0, "arguments":[Ljava/lang/Object;
    :try_start_0
    const-class v7, Lcom/htc/dialog/HtcAlertDialog$Builder;

    const-string v8, "setCheckBox"

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 272
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 281
    iget-object v7, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    new-instance v8, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;

    invoke-direct {v8, p0, v12}, Lcom/android/nfc/HtcConfirmDispatchActivity$DismissListener;-><init>(Lcom/android/nfc/HtcConfirmDispatchActivity;Lcom/android/nfc/HtcConfirmDispatchActivity$1;)V

    invoke-virtual {v7, v8}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    iget-object v7, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v7}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 283
    return-void

    .line 273
    .restart local v0    # "arguments":[Ljava/lang/Object;
    .restart local v5    # "paramTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 274
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/nfc/HtcConfirmDispatchActivity;->TAG:Ljava/lang/String;

    const-string v8, "showAlertDialog: Exception caught."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "NfcServicePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/HtcConfirmDispatchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 168
    iget-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/HtcConfirmDispatchActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isUrlPromptEnabledInACC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->isUrlPromptEnabledInSettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->launchTarget()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/HtcConfirmDispatchActivity;->showAlertDialog()V

    goto :goto_0
.end method
