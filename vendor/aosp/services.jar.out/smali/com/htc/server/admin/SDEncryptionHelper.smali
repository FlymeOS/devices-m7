.class public Lcom/htc/server/admin/SDEncryptionHelper;
.super Ljava/lang/Object;
.source "SDEncryptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/admin/SDEncryptionHelper$1;,
        Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;
    }
.end annotation


# static fields
.field private static final SD_ENCRYPTION_STATUS_ACTIVE:I = 0x2

.field private static final SD_ENCRYPTION_STATUS_ALREADY_ACTIVE:I = 0x3

.field private static final SD_ENCRYPTION_STATUS_NO_SDCARD:I = 0x0

.field private static final SD_ENCRYPTION_STATUS_PASSWORD_REQUIRED:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/admin/SDEncryptionHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/admin/SDEncryptionHelper;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/server/admin/SDEncryptionHelper;->replyResult(I)V

    return-void
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 180
    .local v0, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPasswordExist()Z
    .locals 3

    .prologue
    .line 168
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 169
    .local v0, "quality":I
    const/high16 v1, 0x20000

    if-ge v0, v1, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSDEncryptionActived()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v3, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sd_encryption"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "status":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isSDExist()Z
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "strStatus":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replyResult(I)V
    .locals 4
    .param p1, "resultStatus"    # I

    .prologue
    .line 58
    const/16 v1, -0x1f7

    .line 60
    .local v1, "errorCode":I
    packed-switch p1, :pswitch_data_0

    .line 78
    const/16 v1, -0x1f7

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 83
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 84
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    .line 87
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void

    .line 62
    :pswitch_0
    const/16 v1, -0x1f4

    .line 63
    goto :goto_0

    .line 66
    :pswitch_1
    const/16 v1, -0x1f5

    .line 67
    goto :goto_0

    .line 70
    :pswitch_2
    const/16 v1, 0x8

    .line 71
    goto :goto_0

    .line 74
    :pswitch_3
    const/16 v1, -0x1f6

    .line 75
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSDEncryptionActived()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sd_encryption"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return-void
.end method

.method private startFormatter()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    :goto_0
    return-void

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/htc/server/admin/SDEncryptionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public EncryptSD()I
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isSDEncryptionActived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x3

    .line 112
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isSDExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->isPasswordExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->setSDEncryptionActived()V

    .line 110
    invoke-direct {p0}, Lcom/htc/server/admin/SDEncryptionHelper;->startFormatter()V

    .line 112
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public encryptSDAsync()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;-><init>(Lcom/htc/server/admin/SDEncryptionHelper;Lcom/htc/server/admin/SDEncryptionHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/server/admin/SDEncryptionHelper$EncryptSDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method
