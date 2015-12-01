.class public Lcom/htc/lib1/hfmclient/HfmDownloadClient;
.super Ljava/lang/Object;
.source "HfmDownloadClient.java"


# static fields
.field private static mPathClassLoader:Ldalvik/system/PathClassLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLangDMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/lib1/hfmclient/b;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient$1;-><init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Lcom/htc/lib1/hfmclient/b;)V

    iput-object v0, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mLangDMReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    return-void
.end method

.method private static getNGFServiceClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "HfmDownloadClient"

    const-string v1, "getNGFServiceClass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "com.htc.HTCSpeaker"

    .line 119
    const-string v1, "com.htc.HTCSpeaker.NGFService"

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 125
    sget-object v2, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v2, :cond_0

    .line 127
    const-string v2, "HfmDownloadClient"

    const-string v3, "new PathClassLoader"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 130
    :cond_0
    const/4 v0, 0x1

    sget-object v2, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 331
    const-string v0, "HfmDownloadClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDialogTextFromResourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    .line 336
    :try_start_0
    const-string v1, "com.htc.HTCSpeaker"

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 340
    packed-switch p2, :pswitch_data_0

    .line 392
    :goto_0
    return-object v0

    .line 343
    :pswitch_0
    const-string v3, "download_db_title"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :pswitch_1
    const-string v3, "download_db_content_outside"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :pswitch_2
    const-string v3, "download_db_btn"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_3
    const-string v3, "no_db_btn"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :pswitch_4
    const-string v3, "update_db_title"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 358
    :pswitch_5
    const-string v3, "update_db_content_outside"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 361
    :pswitch_6
    const-string v3, "update_db_btn"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 364
    :pswitch_7
    const-string v3, "no_db_btn"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :pswitch_8
    const-string v3, "network_not_available_title"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 371
    :pswitch_9
    const-string v3, "network_not_available_content"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 374
    :pswitch_a
    const-string v3, "network_not_available_Yes"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 377
    :pswitch_b
    const-string v3, "network_not_available_No"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 380
    :pswitch_c
    const-string v3, "downloading_language_pack"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 389
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static isDataAvailable(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 209
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 210
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    if-nez v3, :cond_2

    :cond_0
    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 235
    const-string v2, "HfmDownloadClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDownloadDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 238
    :cond_0
    const-string v0, "HfmDownloadClient"

    const-string v1, "showDownloadDialog: argument is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, -0x1

    .line 316
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I

    move-result v2

    .line 248
    const-string v3, "HfmDownloadClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    .line 253
    :cond_2
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->isDataAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 255
    new-instance v2, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    const/16 v3, 0x8

    invoke-static {p1, p2, v3}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 257
    const/16 v3, 0x9

    invoke-static {p1, p2, v3}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 259
    const/16 v3, 0xb

    invoke-static {p1, v1, v3}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;

    invoke-direct {v4, p0, p3}, Lcom/htc/lib1/hfmclient/HfmDownloadClient$2;-><init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 270
    const/16 v3, 0xa

    invoke-static {p1, v1, v3}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;

    invoke-direct {v3, p0, p1}, Lcom/htc/lib1/hfmclient/HfmDownloadClient$3;-><init>(Lcom/htc/lib1/hfmclient/HfmDownloadClient;Landroid/content/Context;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 279
    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    goto :goto_0

    .line 285
    :cond_3
    if-ne v2, v6, :cond_4

    .line 287
    invoke-static {p1, v1, v0}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-static {p1, p2, v6}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 289
    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {p1, v1, v7}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 302
    new-instance v5, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v5, v4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 304
    invoke-virtual {v5, v3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 305
    invoke-virtual {v5, v2, p4}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 306
    invoke-virtual {v5, v1, p3}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 307
    invoke-virtual {v5, p5}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;

    .line 308
    invoke-virtual {v5}, Lcom/htc/lib1/cc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/lib1/cc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 292
    :cond_4
    if-ne v2, v7, :cond_6

    .line 294
    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 295
    const/4 v2, 0x5

    invoke-static {p1, p2, v2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 296
    const/4 v2, 0x6

    invoke-static {p1, v1, v2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 297
    const/4 v5, 0x7

    invoke-static {p1, v1, v5}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getTextFromResId(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 313
    :cond_5
    const-string v0, "HfmDownloadClient"

    const-string v1, "get text fail."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_1
.end method

.method public startDownloadCallback()V
    .locals 3

    .prologue
    .line 424
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.HTCSpeaker.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mLangDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 426
    return-void
.end method

.method public startDownloadLangPack(Landroid/content/Context;Ljava/util/Locale;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x2

    .line 168
    const-string v2, "HfmDownloadClient"

    const-string v3, "startDownloadLangPack"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    const-string v0, "HfmDownloadClient"

    const-string v1, "startDownloadLangPack: argument is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, -0x1

    .line 200
    :goto_0
    return v0

    .line 177
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->getNGFServiceClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    .line 178
    if-nez v2, :cond_2

    .line 180
    const-string v1, "HfmDownloadClient"

    const-string v2, "Can not find NGFService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    const-string v1, "HfmDownloadClient"

    const-string v2, "not install engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    const/4 v3, 0x3

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/Locale;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/ResultReceiver;

    aput-object v5, v3, v4

    .line 185
    const-string v4, "startDownloadLangPack"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 186
    if-nez v2, :cond_3

    .line 188
    const-string v1, "HfmDownloadClient"

    const-string v2, "Can not find startDownloadLangPack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 193
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public stopDownloadCallback()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->mLangDMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    return-void
.end method
