.class public Lcom/android/nfc/HtcNfcEnablePromptActivity;
.super Landroid/app/Activity;
.source "HtcNfcEnablePromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/HtcNfcEnablePromptActivity$1;,
        Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;,
        Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;,
        Lcom/android/nfc/HtcNfcEnablePromptActivity$DenyButton;,
        Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field protected static final KEY_APP_NAME:Ljava/lang/String; = "app.name"

.field private static final STATE_ALLOW:I = 0x2

.field private static final STATE_DENY:I = 0x3

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mNfcPromptState:I


# instance fields
.field private mDenyButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mThread:Landroid/os/HandlerThread;

.field private mTimeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtc_DEBUG_flag()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->DBG:Z

    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mNfcPromptState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    .line 251
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/HtcNfcEnablePromptActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->dismissDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/nfc/HtcNfcEnablePromptActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/android/nfc/HtcNfcEnablePromptActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/nfc/HtcNfcEnablePromptActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getAllCapsLocaleIfNeeded(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/HtcNfcEnablePromptActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/HtcNfcEnablePromptActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mDenyButton:Landroid/widget/Button;

    return-object v0
.end method

.method private dismissDialog(Z)V
    .locals 3
    .param p1, "allow"    # Z

    .prologue
    .line 212
    sget-object v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss dialog. allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    .line 215
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mNfcPromptState:I

    .line 216
    invoke-virtual {p0}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->finish()V

    .line 217
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getAllCapsLocaleIfNeeded(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getAllCapsLocaleIfNeeded(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAllCapsLocaleIfNeeded(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "string":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    invoke-static {p0}, Lcom/htc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    return-object v0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mResources:Landroid/content/res/Resources;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static isNeedToBlockCaller(Landroid/content/Context;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 82
    .local v0, "UID":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x403

    if-ne v0, v3, :cond_1

    .line 83
    :cond_0
    sget-object v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToBlockCaller: caller uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", follow google flow."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 106
    :goto_0
    return v3

    .line 87
    :cond_1
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNfcEnablePromptNeeded()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v3, v2

    if-nez v3, :cond_5

    .line 94
    :cond_3
    sget-object v5, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToBlockCaller: packages.length="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_4

    const-string v3, "null"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 96
    goto :goto_0

    .line 94
    :cond_4
    array-length v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 99
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 100
    sget-object v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToBlockCaller: packages["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    .line 103
    goto :goto_0

    .line 99
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 106
    :cond_7
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isPackageWhitelisted(Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getNfcEnablePromptWhiteList()[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "whiteList":[Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez p0, :cond_2

    .line 147
    :cond_0
    sget-object v2, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageWhitelisted: one of following is null. whiteList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 165
    :cond_1
    :goto_0
    return v2

    .line 151
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_4

    .line 153
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    aget-object v4, v1, v0

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v1, v0

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 160
    sget-object v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPackageWhitelisted: partial matched. packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 165
    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 10
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x3070190

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x3070191

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "msg":Ljava/lang/String;
    const v5, 0x3070192

    invoke-direct {p0, v5}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getAllCapsLocaleIfNeeded(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "allow_string":Ljava/lang/String;
    const v5, 0x3070193

    iget v6, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mTimeCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getAllCapsLocaleIfNeeded(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "deny_string":Ljava/lang/String;
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v2, "dialogBuilder":Lcom/htc/dialog/HtcAlertDialog$Builder;
    invoke-virtual {v2, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 177
    invoke-virtual {v2, v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 180
    new-instance v5, Lcom/android/nfc/HtcNfcEnablePromptActivity$DenyButton;

    invoke-direct {v5, p0, v9}, Lcom/android/nfc/HtcNfcEnablePromptActivity$DenyButton;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V

    invoke-virtual {v2, v1, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 182
    new-instance v5, Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;

    invoke-direct {v5, p0, v9}, Lcom/android/nfc/HtcNfcEnablePromptActivity$AllowButton;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V

    invoke-virtual {v2, v0, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 184
    invoke-virtual {v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    .line 185
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    new-instance v6, Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;

    invoke-direct {v6, p0, v9}, Lcom/android/nfc/HtcNfcEnablePromptActivity$DismissListener;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/htc/dialog/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 186
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v5}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 188
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHtcAlertDialog:Lcom/htc/dialog/HtcAlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/htc/dialog/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mDenyButton:Landroid/widget/Button;

    .line 190
    iget-object v5, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;

    invoke-direct {v6, p0, v9}, Lcom/android/nfc/HtcNfcEnablePromptActivity$TimeoutTask;-><init>(Lcom/android/nfc/HtcNfcEnablePromptActivity;Lcom/android/nfc/HtcNfcEnablePromptActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method protected static showDialogIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    const-string v1, "packageName:"

    .line 47
    .local v1, "PREFIX_PACKAGE_NAME":Ljava/lang/String;
    const-string v0, "appName:"

    .line 49
    .local v0, "PREFIX_APP_NAME":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v7, "packageName:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    const-string v7, "appName:"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v5

    .line 54
    :cond_1
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNfcEnablePromptNeeded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    const-string v7, "packageName:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "appName:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "appName":Ljava/lang/String;
    sget-object v7, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showDialogIfNeeded: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") is trying to turn on NFC."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {v4}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->isPackageWhitelisted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 65
    sput v6, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mNfcPromptState:I

    .line 67
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/nfc/HtcNfcEnablePromptActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v3, "dialogIntent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const-string v5, "app.name"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v5, v6

    .line 72
    goto :goto_0
.end method

.method protected static declared-synchronized waitForPromptResult()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 112
    const-class v2, Lcom/android/nfc/HtcNfcEnablePromptActivity;

    monitor-enter v2

    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    :try_start_0
    sget v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mNfcPromptState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    .line 114
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_2
    sget-object v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    const-string v4, "waitForPromptResult: Exception caught."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 119
    :cond_0
    :try_start_3
    sget v3, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mNfcPromptState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_1
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 127
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "app.name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    sget-object v2, Lcom/android/nfc/HtcNfcEnablePromptActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate: appName is invalid. Skip."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mHandler:Landroid/os/Handler;

    .line 136
    invoke-virtual {p0}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/HtcNfcEnablePromptActivity;->mResources:Landroid/content/res/Resources;

    .line 138
    invoke-direct {p0, v0}, Lcom/android/nfc/HtcNfcEnablePromptActivity;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
