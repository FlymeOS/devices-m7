.class final Lcom/htc/server/HtcAppWifiOffload$H;
.super Landroid/os/Handler;
.source "HtcAppWifiOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcAppWifiOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_RESUME:I = 0x1f6

.field static final BOOT_COMPLETED:I = 0x1f5

.field static final PACKAGE_CHANGED:I = 0x1f8

.field static final PARSE_XML_LIST:I = 0x1f4

.field static final QUICKBOOT_POWERON:I = 0x1f7


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcAppWifiOffload;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcAppWifiOffload;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 240
    return-void
.end method

.method private activityResumeHandler(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppWifiOffload$H;->isInternetApp(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 367
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifioffload.intent.INTERNETAPP_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 371
    const-string v1, "HtcAppWifiOffload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brocast resume intent for internet app<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isInternetApp(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 383
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 384
    const/4 v1, 0x1

    .line 408
    :cond_0
    :goto_0
    return v1

    .line 387
    :cond_1
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_2

    move v1, v7

    goto :goto_0

    .line 390
    :cond_2
    const/4 v1, 0x0

    .line 392
    .local v1, "bFound":Z
    :try_start_0
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 395
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 396
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 397
    .local v6, "str":Ljava/lang/String;
    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 399
    iget-object v8, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const/4 v1, 0x1

    .line 401
    goto :goto_0

    .line 396
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v1, v7

    .line 408
    goto :goto_0
.end method

.method private parseXMLListHandler()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 276
    const/4 v3, 0x0

    .line 278
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 279
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 280
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    const-string v11, "/system/etc/wifioffloadpkg.xml"

    invoke-direct {v4, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 283
    .local v6, "isPkgTag":Z
    const/4 v5, 0x0

    .line 284
    .local v5, "isBlackTag":Z
    const/4 v7, 0x0

    .line 286
    .local v7, "isWhiteTag":Z
    :try_start_1
    invoke-interface {v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 287
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 288
    .local v1, "eventType":I
    :goto_0
    if-eq v14, v1, :cond_7

    .line 289
    packed-switch v1, :pswitch_data_0

    .line 338
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 292
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "strTag":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 294
    const-string v11, "BlackList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 295
    const/4 v5, 0x1

    goto :goto_1

    .line 296
    :cond_1
    const-string v11, "WhiteList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 297
    const/4 v7, 0x1

    goto :goto_1

    .line 298
    :cond_2
    const-string v11, "Package"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 299
    const/4 v6, 0x1

    goto :goto_1

    .line 307
    .end local v8    # "strTag":Ljava/lang/String;
    :pswitch_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 308
    .restart local v8    # "strTag":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 309
    const-string v11, "BlackList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 310
    const/4 v5, 0x0

    goto :goto_1

    .line 311
    :cond_3
    const-string v11, "WhiteList"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 312
    const/4 v7, 0x0

    goto :goto_1

    .line 313
    :cond_4
    const-string v11, "Package"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 314
    const/4 v6, 0x0

    goto :goto_1

    .line 321
    .end local v8    # "strTag":Ljava/lang/String;
    :pswitch_2
    if-ne v14, v6, :cond_0

    .line 322
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "strText":Ljava/lang/String;
    if-ne v14, v5, :cond_5

    .line 325
    iget-object v11, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v11, "HtcAppWifiOffload"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BlackList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_5
    if-ne v14, v7, :cond_0

    .line 329
    iget-object v11, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mInternetApps:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/htc/server/HtcAppWifiOffload;->access$600(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v11, "HtcAppWifiOffload"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WhiteList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 340
    .end local v1    # "eventType":I
    .end local v9    # "strText":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 341
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .end local v5    # "isBlackTag":Z
    .end local v6    # "isPkgTag":Z
    .end local v7    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :goto_2
    :try_start_2
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    if-eqz v3, :cond_6

    .line 349
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 355
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_3
    return-void

    .line 347
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isBlackTag":Z
    .restart local v6    # "isPkgTag":Z
    .restart local v7    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    if-eqz v4, :cond_9

    .line 349
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 352
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 350
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 352
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 350
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isBlackTag":Z
    .end local v6    # "isPkgTag":Z
    .end local v7    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 347
    if-eqz v3, :cond_6

    .line 349
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 350
    :catch_4
    move-exception v0

    .line 351
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 345
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 347
    if-eqz v3, :cond_6

    .line 349
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 350
    :catch_6
    move-exception v0

    .line 351
    const-string v11, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v3, :cond_8

    .line 349
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 352
    :cond_8
    :goto_7
    throw v11

    .line 350
    :catch_7
    move-exception v0

    .line 351
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v12, "HtcAppWifiOffload"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 347
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isBlackTag":Z
    .restart local v6    # "isPkgTag":Z
    .restart local v7    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 344
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 342
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 340
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "isBlackTag":Z
    .end local v6    # "isPkgTag":Z
    .end local v7    # "isWhiteTag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v0

    goto :goto_2

    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "eventType":I
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "isBlackTag":Z
    .restart local v6    # "isPkgTag":Z
    .restart local v7    # "isWhiteTag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHomePackageName()V
    .locals 7

    .prologue
    .line 414
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 436
    :cond_0
    return-void

    .line 416
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mPackageMgr:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$700(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 420
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 421
    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 423
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 425
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 426
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.android.htcsetupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 427
    const-string v4, "HtcAppWifiOffload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update HomePackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mLauncherApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$800(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_3
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 432
    iget-object v4, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mNonInternetApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/server/HtcAppWifiOffload;->access$500(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 246
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->parseXMLListHandler()V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppWifiOffload$H;->activityResumeHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->updateHomePackageName()V

    .line 256
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    iget-object v1, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/server/HtcAppWifiOffload;->access$300(Lcom/htc/server/HtcAppWifiOffload;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/HtcISettingsSystem$Agent;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/htc/server/HtcAppWifiOffload;->mIsAirplaneMode:Z
    invoke-static {v0, v1}, Lcom/htc/server/HtcAppWifiOffload;->access$202(Lcom/htc/server/HtcAppWifiOffload;Z)Z

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/htc/server/HtcAppWifiOffload$H;->this$0:Lcom/htc/server/HtcAppWifiOffload;

    # getter for: Lcom/htc/server/HtcAppWifiOffload;->mTriggeredApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/server/HtcAppWifiOffload;->access$400(Lcom/htc/server/HtcAppWifiOffload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 265
    :pswitch_4
    const-string v0, "HtcAppWifiOffload"

    const-string v1, "PACKAGE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/htc/server/HtcAppWifiOffload$H;->updateHomePackageName()V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
