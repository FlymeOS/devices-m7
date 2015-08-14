.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 4757
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private boradcastWithNfcEventPermission(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent4Broadcast"    # Landroid/content/Intent;

    .prologue
    .line 5273
    sget-boolean v6, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "NfcService"

    const-string v7, "Check permission of NFC Events before broadcasting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    :cond_0
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 5277
    monitor-enter p0

    .line 5280
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$4100(Lcom/android/nfc/NfcService;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 5281
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v7, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6, v7}, Lcom/android/nfc/NfcService;->access$4202(Lcom/android/nfc/NfcService;[Z)[Z

    .line 5282
    sget-boolean v6, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "NfcService"

    const-string v7, "re-get rules"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)[Z

    move-result-object v6

    if-nez v6, :cond_2

    .line 5287
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_2

    .line 5289
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5290
    .local v4, "nTimeConsumedStart":J
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    move-result-object v7

    const-string v8, "SIM: UICC"

    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;->isNfcEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z

    move-result-object v7

    # setter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6, v7}, Lcom/android/nfc/NfcService;->access$4202(Lcom/android/nfc/NfcService;[Z)[Z

    .line 5292
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J
    invoke-static {v6, v8, v9}, Lcom/android/nfc/NfcService;->access$4102(Lcom/android/nfc/NfcService;J)J

    .line 5293
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "permission result updated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsResultCacheTime:J
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$4100(Lcom/android/nfc/NfcService;)J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5304
    .end local v4    # "nTimeConsumedStart":J
    :cond_2
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)[Z

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)[Z

    move-result-object v6

    array-length v6, v6

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_4

    .line 5306
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)[Z

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 5308
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcEventsPermissionResults:[Z
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)[Z

    move-result-object v6

    aget-boolean v6, v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 5311
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5312
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithNfcPermission:[Ljava/lang/String;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4300(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5313
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.NFC"

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5306
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5298
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 5299
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to call isNfcEventAllowed(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5327
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5317
    :cond_4
    const/16 v6, 0x20

    :try_start_3
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5318
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5319
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_5

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_5

    .line 5320
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5321
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5322
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.NFC"

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    .line 5327
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5328
    return-void
.end method

.method private boradcastWithTransactionPermission(Landroid/content/Intent;[B)V
    .locals 12
    .param p1, "intent4Broadcast"    # Landroid/content/Intent;
    .param p2, "aid"    # [B

    .prologue
    .line 5332
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "NfcService"

    const-string v8, "Check permission of EVT_TRANSACTION Events before broadcasting"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5333
    :cond_0
    if-nez p2, :cond_1

    .line 5334
    const-string v7, "NfcService"

    const-string v8, "AID is required for EVT_TRANSACTION Events broadcasting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    :goto_0
    return-void

    .line 5338
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 5339
    monitor-enter p0

    .line 5341
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p2, v7}, Lcom/android/nfc/HtcUtils;->ByteArrayToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 5343
    .local v6, "strAID":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4400(Lcom/android/nfc/NfcService;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5344
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v8, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7, v8}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;[Z)[Z

    .line 5345
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v8, 0x0

    # setter for: Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/nfc/NfcService;->access$4502(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 5346
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NfcService"

    const-string v8, "re-get rules for EVT_TRANSACTION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    :cond_3
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)[Z

    move-result-object v7

    if-nez v7, :cond_4

    .line 5351
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_4

    .line 5353
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5354
    .local v4, "nTimeConsumedStart":J
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->accessControlSvc:Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;

    move-result-object v8

    const-string v9, "SIM: UICC"

    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$4700(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p2}, Lorg/simalliance/openmobileapi/service/security/IAccessControlSvc;->isNfcEventAllowed(Ljava/lang/String;[Ljava/lang/String;[B)[Z

    move-result-object v8

    # setter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7, v8}, Lcom/android/nfc/NfcService;->access$4602(Lcom/android/nfc/NfcService;[Z)[Z

    .line 5356
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    # setter for: Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J
    invoke-static {v7, v8, v9}, Lcom/android/nfc/NfcService;->access$4402(Lcom/android/nfc/NfcService;J)J

    .line 5357
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mTransactionEvent4Aid:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/nfc/NfcService;->access$4502(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    .line 5358
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "permission result updated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionResultCacheTime:J
    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$4400(Lcom/android/nfc/NfcService;)J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5369
    .end local v4    # "nTimeConsumedStart":J
    :cond_4
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)[Z

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)[Z

    move-result-object v7

    array-length v7, v7

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$4700(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_6

    .line 5371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)[Z

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_8

    .line 5373
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mTransactionPermissionResults:[Z
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)[Z

    move-result-object v7

    aget-boolean v7, v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 5376
    const/16 v7, 0x20

    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5377
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPackagesWithTransactionPermission:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4700(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5378
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.NFC"

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5371
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5363
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 5364
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call isNfcEventAllowed(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5392
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "strAID":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 5382
    .restart local v6    # "strAID":Ljava/lang/String;
    :cond_6
    const/16 v7, 0x20

    :try_start_3
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5383
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 5384
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_7

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_7

    .line 5385
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5386
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5387
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.NFC"

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 5392
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V
    .locals 10
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;
    .param p3, "message_id"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 5468
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 5470
    .local v0, "tag":Landroid/nfc/Tag;
    const/16 v1, 0x26af

    if-eq p3, v1, :cond_0

    .line 5471
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 5474
    :cond_0
    if-eqz p2, :cond_5

    .line 5476
    :try_start_0
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_1

    .line 5477
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5479
    :cond_1
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_4

    .line 5480
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NfcService"

    const-string v2, "under special reader mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5481
    :cond_2
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 5513
    :cond_3
    :goto_0
    return-void

    .line 5485
    :cond_4
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "NfcService"

    const-string v2, "readerParams.callback is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5497
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mnUserPromptUI:I
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    if-nez p3, :cond_6

    .line 5498
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-static {v1, p1}, Lcom/android/nfc/NfcService;->access$4902(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost$TagEndpoint;)Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 5499
    # getter for: Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;
    invoke-static {}, Lcom/android/nfc/NfcService;->access$5000()Lcom/android/nfc/NfcService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/android/nfc/NfcService;->requestReceiveConfirmation(Landroid/nfc/NdefMessage;I)V

    .line 5500
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 5487
    :catch_0
    move-exception v7

    .line 5488
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5490
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 5492
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "App exception, not dispatching."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5504
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 5505
    .local v6, "dispatchResult":I
    if-ne v6, v9, :cond_7

    .line 5506
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 5507
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v9}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 5508
    :cond_7
    if-ne v6, v8, :cond_3

    .line 5509
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/nfc/NfcDispatcher;->mbIsMatchedBtHandover:Z

    if-nez v1, :cond_3

    .line 5510
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v0, 0x1

    .line 5413
    const-string v1, "NfcService"

    const-string v2, "LLCP Activation message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5415
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 5416
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    :cond_0
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5419
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5421
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5422
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5425
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5426
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5427
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    .line 5464
    :goto_0
    return v0

    .line 5426
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5431
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5432
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 5464
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5435
    :cond_4
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5436
    :cond_5
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1

    .line 5439
    :cond_6
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5445
    :cond_7
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 5446
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5448
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5450
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5451
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_9
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5454
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5455
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5456
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    goto :goto_0

    .line 5455
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 5460
    :cond_a
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private monitorScreenState(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    const/16 v2, 0x26ad

    .line 5516
    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 5517
    if-eqz p1, :cond_0

    .line 5518
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5520
    :cond_0
    return-void
.end method

.method private sendBroadcastToHtcTestApps(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5397
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5398
    monitor-enter p0

    .line 5399
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 5400
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHtcTestApps:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$4800(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 5402
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHtcTestApps:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$4800(Lcom/android/nfc/NfcService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5403
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5404
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.NFC"

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5401
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5409
    .end local v0    # "i":I
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_2
    monitor-exit p0

    .line 5410
    return-void

    .line 5409
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5250
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isVzwSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5252
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->boradcastWithNfcEventPermission(Landroid/content/Intent;)V

    .line 5269
    :goto_0
    return-void

    .line 5255
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5257
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 5259
    monitor-enter p0

    .line 5260
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 5261
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 5262
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5263
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5264
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.NFC"

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 5268
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 65
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4760
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_0

    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "handleMessage msg = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x1

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mState:Ljava/lang/Integer;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x4

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_4

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0x5

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0x6

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0xd4

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0xcb

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0x7

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_4

    .line 4764
    :cond_2
    const-string v60, "NfcService"

    const-string v61, "About to disable NFC, ignore this msg"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5247
    :cond_3
    :goto_0
    return-void

    .line 4768
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    sparse-switch v60, :sswitch_data_0

    .line 5244
    const-string v60, "NfcService"

    const-string v61, "Unknown message received"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4770
    :sswitch_0
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_5

    const-string v60, "NfcService"

    const-string v61, "MSG_ROUTE_AID"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 4772
    .local v53, "route":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v50, v0

    .line 4773
    .local v50, "power":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 4775
    .local v13, "aid":Ljava/lang/String;
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpCodebase()Z

    move-result v60

    if-eqz v60, :cond_6

    .line 4776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-static {v13}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move/from16 v2, v53

    move/from16 v3, v50

    invoke-interface {v0, v1, v2, v3}, Lcom/android/nfc/DeviceHost;->routeAid([BII)Z

    goto :goto_0

    .line 4778
    :cond_6
    const-string v60, "*"

    move-object/from16 v0, v60

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_7

    .line 4779
    const/16 v60, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v61

    add-int/lit8 v61, v61, -0x1

    move/from16 v0, v60

    move/from16 v1, v61

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 4780
    .local v23, "cuttedAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-static/range {v23 .. v23}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v61

    const/16 v62, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move/from16 v2, v53

    move/from16 v3, v50

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAidEx([BIIZ)Z

    goto/16 :goto_0

    .line 4782
    .end local v23    # "cuttedAid":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-static {v13}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v61

    const/16 v62, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move/from16 v2, v53

    move/from16 v3, v50

    move/from16 v4, v62

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAidEx([BIIZ)Z

    goto/16 :goto_0

    .line 4789
    .end local v13    # "aid":Ljava/lang/String;
    .end local v50    # "power":I
    .end local v53    # "route":I
    :sswitch_1
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_8

    const-string v60, "NfcService"

    const-string v61, "MSG_UNROUTE_AID"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 4791
    .restart local v13    # "aid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 4792
    .restart local v53    # "route":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-static {v13}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v61

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move/from16 v2, v53

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->unrouteAid([BI)Z

    goto/16 :goto_0

    .line 4796
    .end local v13    # "aid":Ljava/lang/String;
    .end local v53    # "route":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v61, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/nfc/BeamShareData;

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_0

    .line 4800
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 4801
    .local v31, "enable":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v60

    if-eqz v60, :cond_9

    .line 4802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->SetScrnState(I)Z

    goto/16 :goto_0

    .line 4804
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->SetFilterTag(I)Z

    goto/16 :goto_0

    .line 4809
    .end local v31    # "enable":I
    :sswitch_4
    const/16 v20, 0x0

    .line 4810
    .local v20, "commit":Z
    const-string v60, "NfcService"

    const-string v61, "MSG_COMMIT_ROUTING"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isNxpNciCodebase()Z

    move-result v60

    if-eqz v60, :cond_a

    .line 4813
    const-string v60, "NfcService"

    const-string v61, "applyRouting -9"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_0

    .line 4817
    :cond_a
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isRussianSku()Z

    move-result v60

    if-nez v60, :cond_b

    invoke-static {}, Lcom/android/nfc/HtcUtils;->disableHceWhenNoHostPayment()Z

    move-result v60

    if-eqz v60, :cond_c

    .line 4818
    :cond_b
    const-string v60, "NfcService"

    const-string v61, "applyRouting -9"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_0

    .line 4823
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 4824
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v60

    if-eqz v60, :cond_d

    .line 4825
    const/16 v20, 0x1

    .line 4829
    :goto_1
    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4830
    if-eqz v20, :cond_3

    .line 4831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    .line 4833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v27

    .line 4834
    .local v27, "defaultRoute":I
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Set default route "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    move-object/from16 v0, v60

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    goto/16 :goto_0

    .line 4827
    .end local v27    # "defaultRoute":I
    :cond_d
    :try_start_1
    const-string v60, "NfcService"

    const-string v62, "Not committing routing because discovery is disabled."

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4829
    :catchall_0
    move-exception v60

    monitor-exit v61
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v60

    .line 4841
    .end local v20    # "commit":Z
    :sswitch_5
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_e

    const-string v60, "NfcService"

    const-string v61, "MSG_CLEAR_ROUTING"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Lcom/android/nfc/DeviceHost;->clearRouting()V

    goto/16 :goto_0

    .line 4847
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/nfc/NdefMessage;

    .line 4848
    .local v48, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v39, Landroid/os/Bundle;

    invoke-direct/range {v39 .. v39}, Landroid/os/Bundle;-><init>()V

    .line 4849
    .local v39, "extras":Landroid/os/Bundle;
    const-string v60, "ndefmsg"

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4850
    const-string v60, "ndefmaxlength"

    const/16 v61, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4851
    const-string v60, "ndefcardstate"

    const/16 v61, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4852
    const-string v60, "ndeftype"

    const/16 v61, -0x1

    move-object/from16 v0, v39

    move-object/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4853
    const/16 v60, 0x1

    move/from16 v0, v60

    new-array v0, v0, [B

    move-object/from16 v60, v0

    const/16 v61, 0x0

    const/16 v62, 0x0

    aput-byte v62, v60, v61

    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x6

    aput v63, v61, v62

    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v39, v62, v63

    invoke-static/range {v60 .. v62}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v56

    .line 4857
    .local v56, "tag":Landroid/nfc/Tag;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mnUserPromptUI:I
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$3500(Lcom/android/nfc/NfcService;)I

    move-result v60

    and-int/lit8 v60, v60, 0x1

    if-eqz v60, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0x3

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_f

    .line 4858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, v48

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/NfcService;->requestReceiveConfirmation(Landroid/nfc/NdefMessage;I)V

    goto/16 :goto_0

    .line 4862
    :cond_f
    const-string v60, "NfcService"

    const-string v61, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    const-string v60, "NfcService"

    invoke-virtual/range {v56 .. v56}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v29

    .line 4865
    .local v29, "dispatchStatus":I
    const/16 v60, 0x1

    move/from16 v0, v29

    move/from16 v1, v60

    if-ne v0, v1, :cond_10

    .line 4866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v60

    move-object/from16 v0, v60

    iget-boolean v0, v0, Lcom/android/nfc/NfcDispatcher;->mbIsMatchedBtHandover:Z

    move/from16 v60, v0

    if-nez v60, :cond_3

    .line 4867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x1

    invoke-virtual/range {v60 .. v61}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4869
    :cond_10
    const/16 v60, 0x2

    move/from16 v0, v29

    move/from16 v1, v60

    if-ne v0, v1, :cond_3

    .line 4870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x2

    invoke-virtual/range {v60 .. v61}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4877
    .end local v29    # "dispatchStatus":I
    .end local v39    # "extras":Landroid/os/Bundle;
    .end local v48    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v56    # "tag":Landroid/nfc/Tag;
    :sswitch_7
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_11

    const-string v60, "NfcService"

    const-string v61, "Tag detected, notifying applications"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4879
    .local v56, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/16 v52, 0x0

    .line 4880
    .local v52, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v51, 0x7d

    .line 4881
    .local v51, "presenceCheckDelay":I
    new-instance v18, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 4892
    .local v18, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 4893
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v52, v0

    .line 4894
    monitor-exit v61
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4895
    if-eqz v52, :cond_13

    .line 4896
    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v51, v0

    .line 4897
    move-object/from16 v0, v52

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v60, v0

    move/from16 v0, v60

    and-int/lit16 v0, v0, 0x80

    move/from16 v60, v0

    if-eqz v60, :cond_13

    .line 4898
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_12

    const-string v60, "NfcService"

    const-string v61, "Skipping NDEF detection in reader mode"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4899
    :cond_12
    move-object/from16 v0, v56

    move/from16 v1, v51

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4900
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v52

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V

    goto/16 :goto_0

    .line 4894
    :catchall_1
    move-exception v60

    :try_start_3
    monitor-exit v61
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v60

    .line 4904
    :cond_13
    invoke-interface/range {v56 .. v56}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v60

    const/16 v61, 0xa

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_15

    .line 4909
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_14

    const-string v60, "NfcService"

    const-string v61, "Skipping NDEF detection for NFC Barcode"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    :cond_14
    move-object/from16 v0, v56

    move/from16 v1, v51

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4911
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v52

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V

    goto/16 :goto_0

    .line 4914
    :cond_15
    invoke-interface/range {v56 .. v56}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v48

    .line 4916
    .restart local v48    # "ndefMsg":Landroid/nfc/NdefMessage;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    const/16 v61, 0x26af

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_16

    .line 4917
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v52

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V

    goto/16 :goto_0

    .line 4921
    :cond_16
    if-eqz v48, :cond_17

    .line 4922
    move-object/from16 v0, v56

    move/from16 v1, v51

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4923
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v52

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V

    goto/16 :goto_0

    .line 4925
    :cond_17
    invoke-interface/range {v56 .. v56}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v60

    if-eqz v60, :cond_18

    .line 4926
    move-object/from16 v0, v56

    move/from16 v1, v51

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4927
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v52

    move/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;I)V

    goto/16 :goto_0

    .line 4929
    :cond_18
    invoke-interface/range {v56 .. v56}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x2

    invoke-virtual/range {v60 .. v61}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 4936
    .end local v18    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v48    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v51    # "presenceCheckDelay":I
    .end local v52    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v56    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :sswitch_8
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_19

    const-string v60, "NfcService"

    const-string v61, "Card Emulation message"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v60

    if-eqz v60, :cond_1a

    .line 4941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 4943
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Landroid/util/Pair;

    .line 4944
    .local v59, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/util/Pair;

    .line 4945
    .local v25, "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Event source "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    const-string v37, ""

    .line 4948
    .local v37, "evtSrcCE":Ljava/lang/String;
    if-eqz v25, :cond_1b

    .line 4949
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/lang/Integer;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x2

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1e

    .line 4950
    const-string v37, "com.nxp.uicc.ID"

    .line 4957
    :cond_1b
    :goto_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 4959
    .local v10, "TransactionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$3600(Lcom/android/nfc/NfcService;)I

    move-result v60

    if-lez v60, :cond_20

    .line 4961
    const-string v12, "android.nfc.action.TRANSACTION_DETECTED"

    .line 4962
    .local v12, "actionStr":Ljava/lang/String;
    const-string v14, "android.nfc.extra.AID"

    .line 4963
    .local v14, "aidExtraStr":Ljava/lang/String;
    const-string v24, "android.nfc.extra.DATA"

    .line 4965
    .local v24, "dataExtraStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$3600(Lcom/android/nfc/NfcService;)I

    move-result v60

    const/16 v61, 0x29

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1c

    .line 4966
    const-string v12, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    .line 4967
    const-string v14, "com.gsma.services.nfc.extra.AID"

    .line 4968
    const-string v24, "com.gsma.services.nfc.extra.DATA"

    .line 4970
    :cond_1c
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4971
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v60

    invoke-virtual {v10, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4972
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v24

    move-object/from16 v1, v60

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4973
    const-string v60, "com.nxp.extra.SOURCE"

    move-object/from16 v0, v60

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4976
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "nfc://secure:0/"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    const/16 v62, 0x0

    const/16 v63, -0x1

    const-string v64, ""

    move-object/from16 v0, v60

    move/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v64

    # invokes: Lcom/android/nfc/NfcService;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/android/nfc/NfcService;->access$3700([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v60 .. v60}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 4978
    .local v22, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4980
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isIsisSkus()Z

    move-result v60

    if-nez v60, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mGSMATransactionBehavior:I
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)I

    move-result v60

    const/16 v61, 0x1

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1f

    .line 4981
    :cond_1d
    const-string v60, "NfcService"

    const-string v61, "broadcast evt_transaction event."

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    const-string v61, "nfc://secure:0/SIM/"

    invoke-virtual/range {v60 .. v61}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    const/16 v62, 0x0

    const/16 v63, -0x1

    const-string v64, ""

    move-object/from16 v0, v60

    move/from16 v1, v62

    move/from16 v2, v63

    move-object/from16 v3, v64

    # invokes: Lcom/android/nfc/NfcService;->byteArray2String([BIILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v2, v3}, Lcom/android/nfc/NfcService;->access$3700([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v60

    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-static/range {v60 .. v60}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 4984
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4985
    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v10, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->boradcastWithTransactionPermission(Landroid/content/Intent;[B)V

    .line 5010
    .end local v12    # "actionStr":Ljava/lang/String;
    .end local v14    # "aidExtraStr":Ljava/lang/String;
    .end local v22    # "contentUri":Landroid/net/Uri;
    .end local v24    # "dataExtraStr":Ljava/lang/String;
    :goto_3
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 5011
    .local v6, "Intent4HtcTestApps":Landroid/content/Intent;
    const-string v60, "com.nxp.action.TRANSACTION_DETECTED"

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5012
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendBroadcastToHtcTestApps(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4951
    .end local v6    # "Intent4HtcTestApps":Landroid/content/Intent;
    .end local v10    # "TransactionIntent":Landroid/content/Intent;
    :cond_1e
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/lang/Integer;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x1

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1b

    .line 4952
    const-string v37, "com.nxp.smart_mx.ID"

    goto/16 :goto_2

    .line 4987
    .restart local v10    # "TransactionIntent":Landroid/content/Intent;
    .restart local v12    # "actionStr":Ljava/lang/String;
    .restart local v14    # "aidExtraStr":Ljava/lang/String;
    .restart local v22    # "contentUri":Landroid/net/Uri;
    .restart local v24    # "dataExtraStr":Ljava/lang/String;
    :cond_1f
    const-string v60, "NfcService"

    const-string v61, "intent Access Control"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v61, v0

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    # invokes: Lcom/android/nfc/NfcService;->intentAccessControl(Landroid/content/Intent;[B)V
    invoke-static {v0, v10, v1}, Lcom/android/nfc/NfcService;->access$3900(Lcom/android/nfc/NfcService;Landroid/content/Intent;[B)V

    goto :goto_3

    .line 4991
    .end local v12    # "actionStr":Ljava/lang/String;
    .end local v14    # "aidExtraStr":Ljava/lang/String;
    .end local v22    # "contentUri":Landroid/net/Uri;
    .end local v24    # "dataExtraStr":Ljava/lang/String;
    :cond_20
    const-string v60, "com.nxp.action.TRANSACTION_DETECTED"

    move-object/from16 v0, v60

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4992
    const-string v61, "com.nxp.extra.AID"

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4993
    const-string v61, "com.nxp.extra.DATA"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4994
    const-string v60, "com.nxp.extra.SOURCE"

    move-object/from16 v0, v60

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4995
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_21

    .line 4996
    const-string v60, "NfcService"

    const-string v61, "Start Activity Card Emulation event"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    const-string v60, "NfcService"

    const-string v61, "Broadcasting com.nxp.action.TRANSACTION_DETECTED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    :cond_21
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 5002
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 5003
    .local v15, "aidIntent":Landroid/content/Intent;
    const-string v60, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v60

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5004
    const-string v61, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v59

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5005
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_22

    const-string v60, "NfcService"

    const-string v61, "Broadcasting com.android.nfc_extras.action.AID_SELECTED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 5017
    .end local v10    # "TransactionIntent":Landroid/content/Intent;
    .end local v15    # "aidIntent":Landroid/content/Intent;
    .end local v25    # "dataSrcInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/lang/Integer;>;"
    .end local v37    # "evtSrcCE":Ljava/lang/String;
    .end local v59    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[BLandroid/util/Pair;>;"
    :sswitch_9
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_23

    const-string v60, "NfcService"

    const-string v61, "SE EVENT CONNECTIVITY"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/Integer;

    .line 5020
    .local v38, "evtSrcInfo":Ljava/lang/Integer;
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Event source "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5021
    const-string v36, ""

    .line 5022
    .local v36, "evtSrc":Ljava/lang/String;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x2

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_26

    .line 5023
    const-string v36, "com.nxp.uicc.ID"

    .line 5028
    :cond_24
    :goto_4
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 5029
    .local v32, "eventConnectivityIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    # getter for: Lcom/android/nfc/NfcService;->mUseGSMATransactionIntent:I
    invoke-static/range {v60 .. v60}, Lcom/android/nfc/NfcService;->access$3600(Lcom/android/nfc/NfcService;)I

    move-result v60

    if-lez v60, :cond_27

    const-string v21, "android.nfc.action.CONNECTIVITY_EVENT_DETECTED"

    .line 5031
    .local v21, "connectivityAction":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5032
    const-string v60, "com.nxp.extra.SOURCE"

    move-object/from16 v0, v32

    move-object/from16 v1, v60

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5033
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_25

    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Broadcasting Intent "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5024
    .end local v21    # "connectivityAction":Ljava/lang/String;
    .end local v32    # "eventConnectivityIntent":Landroid/content/Intent;
    :cond_26
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v60

    const/16 v61, 0x1

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_24

    .line 5025
    const-string v36, "com.nxp.smart_mx.ID"

    goto :goto_4

    .line 5029
    .restart local v32    # "eventConnectivityIntent":Landroid/content/Intent;
    :cond_27
    const-string v21, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    goto :goto_5

    .line 5037
    .end local v32    # "eventConnectivityIntent":Landroid/content/Intent;
    .end local v36    # "evtSrc":Ljava/lang/String;
    .end local v38    # "evtSrcInfo":Ljava/lang/Integer;
    :sswitch_a
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_28

    const-string v60, "NfcService"

    const-string v61, "Card Removal message"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    :cond_28
    new-instance v19, Landroid/content/Intent;

    const-string v60, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v19

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5040
    .local v19, "cardRemovalIntent":Landroid/content/Intent;
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_29

    const-string v60, "NfcService"

    const-string v61, "Broadcasting com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5044
    .end local v19    # "cardRemovalIntent":Landroid/content/Intent;
    :sswitch_b
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_2a

    const-string v60, "NfcService"

    const-string v61, "APDU Received message"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    :cond_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v16, v60

    check-cast v16, [B

    .line 5047
    .local v16, "apduBytes":[B
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 5048
    .local v17, "apduReceivedIntent":Landroid/content/Intent;
    const-string v60, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v17

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5049
    if-eqz v16, :cond_2b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v60, v0

    if-lez v60, :cond_2b

    .line 5050
    const-string v60, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v17

    move-object/from16 v1, v60

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5052
    :cond_2b
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_2c

    const-string v60, "NfcService"

    const-string v61, "Broadcasting com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5056
    .end local v16    # "apduBytes":[B
    .end local v17    # "apduReceivedIntent":Landroid/content/Intent;
    :sswitch_c
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_2d

    const-string v60, "NfcService"

    const-string v61, "MIFARE access message"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5058
    :cond_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, [B

    move-object/from16 v47, v60

    check-cast v47, [B

    .line 5059
    .local v47, "mifareCmd":[B
    new-instance v45, Landroid/content/Intent;

    invoke-direct/range {v45 .. v45}, Landroid/content/Intent;-><init>()V

    .line 5060
    .local v45, "mifareAccessIntent":Landroid/content/Intent;
    const-string v60, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5061
    if-eqz v47, :cond_2f

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v60, v0

    const/16 v61, 0x1

    move/from16 v0, v60

    move/from16 v1, v61

    if-le v0, v1, :cond_2f

    .line 5062
    const/16 v60, 0x1

    aget-byte v60, v47, v60

    move/from16 v0, v60

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    .line 5063
    .local v46, "mifareBlock":I
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_2e

    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Mifare Block="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    :cond_2e
    const-string v60, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v45

    move-object/from16 v1, v60

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5066
    .end local v46    # "mifareBlock":I
    :cond_2f
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_30

    const-string v60, "NfcService"

    const-string v61, "Broadcasting com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5071
    .end local v45    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v47    # "mifareCmd":[B
    :sswitch_d
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_31

    .line 5072
    const-string v60, "NfcService"

    const-string v61, "EMVCO MULTI CARD DETECTED EVENT"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5075
    :cond_31
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 5076
    .local v33, "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    const-string v60, "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

    move-object/from16 v0, v33

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5077
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_32

    .line 5078
    const-string v60, "NfcService"

    const-string v61, "Broadcasting Intent"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5083
    .end local v33    # "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v60, v0

    if-eqz v60, :cond_33

    .line 5084
    new-instance v11, Landroid/content/Intent;

    const-string v60, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v60

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5085
    .local v11, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 5087
    .end local v11    # "actIntent":Landroid/content/Intent;
    :cond_33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    goto/16 :goto_0

    .line 5091
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v60, v0

    if-eqz v60, :cond_34

    .line 5092
    new-instance v26, Landroid/content/Intent;

    const-string v60, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v26

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5093
    .local v26, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 5095
    .end local v26    # "deactIntent":Landroid/content/Intent;
    :cond_34
    const/16 v28, 0x0

    .line 5096
    .local v28, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    instance-of v0, v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move/from16 v60, v0

    if-eqz v60, :cond_38

    .line 5097
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    .end local v28    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    check-cast v28, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 5101
    .restart local v28    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    :goto_6
    const/16 v49, 0x0

    .line 5103
    .local v49, "needsDisconnect":Z
    const-string v60, "NfcService"

    const-string v61, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 5106
    if-eqz v28, :cond_36

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-interface/range {v28 .. v28}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    if-eqz v60, :cond_36

    .line 5108
    invoke-interface/range {v28 .. v28}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v60

    if-nez v60, :cond_39

    .line 5109
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_35

    const-string v60, "NfcService"

    const-string v62, "disconnecting from target"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    :cond_35
    const/16 v49, 0x1

    .line 5115
    :cond_36
    :goto_7
    monitor-exit v61
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5116
    if-eqz v49, :cond_37

    .line 5117
    invoke-interface/range {v28 .. v28}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 5120
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_0

    .line 5099
    .end local v49    # "needsDisconnect":Z
    :cond_38
    const-string v60, "NfcService"

    const-string v61, "Not expected class: NfcDepEndpoint"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 5112
    .restart local v49    # "needsDisconnect":Z
    :cond_39
    :try_start_5
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_36

    const-string v60, "NfcService"

    const-string v62, "not disconnecting from initiator"

    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 5115
    :catchall_2
    move-exception v60

    monitor-exit v61
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v60

    .line 5123
    .end local v28    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v49    # "needsDisconnect":Z
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_0

    .line 5127
    :sswitch_11
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3a

    const-string v60, "NfcService"

    const-string v61, "Target Deselected"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    :cond_3a
    new-instance v42, Landroid/content/Intent;

    const-string v60, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v42

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5129
    .local v42, "intent":Landroid/content/Intent;
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3b

    const-string v60, "NfcService"

    const-string v61, "Broadcasting Intent"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :cond_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5133
    .end local v42    # "intent":Landroid/content/Intent;
    :sswitch_12
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3c

    const-string v60, "NfcService"

    const-string v61, "RF FIELD ON"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    :cond_3c
    new-instance v41, Landroid/content/Intent;

    const-string v60, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5135
    .local v41, "fieldOnIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5138
    .end local v41    # "fieldOnIntent":Landroid/content/Intent;
    :sswitch_13
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3d

    const-string v60, "NfcService"

    const-string v61, "RF FIELD OFF"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    :cond_3d
    new-instance v40, Landroid/content/Intent;

    const-string v60, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v40

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5140
    .local v40, "fieldOffIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5143
    .end local v40    # "fieldOffIntent":Landroid/content/Intent;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    goto/16 :goto_0

    .line 5148
    :sswitch_15
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3e

    const-string v60, "NfcService"

    const-string v61, "SE FIELD ACTIVATED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    :cond_3e
    new-instance v35, Landroid/content/Intent;

    invoke-direct/range {v35 .. v35}, Landroid/content/Intent;-><init>()V

    .line 5150
    .local v35, "eventFieldOnIntent":Landroid/content/Intent;
    const-string v60, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v35

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5151
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5156
    .end local v35    # "eventFieldOnIntent":Landroid/content/Intent;
    :sswitch_16
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_3f

    const-string v60, "NfcService"

    const-string v61, "SE FIELD DEACTIVATED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_3f
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 5158
    .local v34, "eventFieldOffIntent":Landroid/content/Intent;
    const-string v60, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v34

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5159
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5164
    .end local v34    # "eventFieldOffIntent":Landroid/content/Intent;
    :sswitch_17
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_40

    const-string v60, "NfcService"

    const-string v61, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    :cond_40
    new-instance v43, Landroid/content/Intent;

    const-string v60, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5166
    .local v43, "listenModeActivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5170
    .end local v43    # "listenModeActivated":Landroid/content/Intent;
    :sswitch_18
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_41

    const-string v60, "NfcService"

    const-string v61, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5171
    :cond_41
    new-instance v44, Landroid/content/Intent;

    const-string v60, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v44

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5172
    .local v44, "listenModeDeactivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5178
    .end local v44    # "listenModeDeactivated":Landroid/content/Intent;
    :sswitch_19
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 5179
    .local v9, "SWPReaderRequestedIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/ArrayList;

    .line 5180
    .local v57, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v60, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v58

    check-cast v58, [Ljava/lang/Integer;

    .line 5182
    .local v58, "techs":[Ljava/lang/Integer;
    const-string v60, "com.nxp.nfc_extras.ACTION_SWP_READER_REQUESTED"

    move-object/from16 v0, v60

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5184
    const-string v60, "com.nxp.nfc_extras.extra.EXTRA_SWP_READER_TECH"

    move-object/from16 v0, v60

    move-object/from16 v1, v58

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5185
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_42

    .line 5186
    const-string v60, "NfcService"

    const-string v61, "SWP READER - Requested"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5188
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5193
    .end local v9    # "SWPReaderRequestedIntent":Landroid/content/Intent;
    .end local v57    # "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v58    # "techs":[Ljava/lang/Integer;
    :sswitch_1a
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 5194
    .local v7, "SWPReaderActivatedIntent":Landroid/content/Intent;
    const-string v60, "com.nxp.nfc_extras.ACTION_SWP_READER_ACTIVATED"

    move-object/from16 v0, v60

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5196
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_43

    .line 5197
    const-string v60, "NfcService"

    const-string v61, "SWP READER - Activated"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5204
    .end local v7    # "SWPReaderActivatedIntent":Landroid/content/Intent;
    :sswitch_1b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 5205
    .local v8, "SWPReaderDeActivatedIntent":Landroid/content/Intent;
    const-string v60, "com.nxp.nfc_extras.ACTION_SWP_READER_DEACTIVATED"

    move-object/from16 v0, v60

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5207
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_44

    .line 5208
    const-string v60, "NfcService"

    const-string v61, "SWP READER - DeActivated"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5214
    .end local v8    # "SWPReaderDeActivatedIntent":Landroid/content/Intent;
    :sswitch_1c
    const/16 v54, 0x0

    .line 5216
    .local v54, "screenState":Ljava/io/FileReader;
    :try_start_6
    new-instance v55, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 5217
    .end local v54    # "screenState":Ljava/io/FileReader;
    .local v55, "screenState":Ljava/io/FileReader;
    :try_start_7
    invoke-virtual/range {v55 .. v55}, Ljava/io/FileReader;->read()I

    move-result v60

    const/16 v61, 0x30

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_45

    .line 5218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenObserver:Landroid/os/FileObserver;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    const/16 v62, 0x0

    invoke-virtual/range {v60 .. v62}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 5223
    :cond_45
    if-eqz v55, :cond_49

    .line 5225
    :try_start_8
    invoke-virtual/range {v55 .. v55}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v54, v55

    .line 5231
    .end local v55    # "screenState":Ljava/io/FileReader;
    .restart local v54    # "screenState":Ljava/io/FileReader;
    :cond_46
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->monitorScreenState(Z)V

    goto/16 :goto_0

    .line 5226
    .end local v54    # "screenState":Ljava/io/FileReader;
    .restart local v55    # "screenState":Ljava/io/FileReader;
    :catch_0
    move-exception v30

    .line 5227
    .local v30, "e":Ljava/io/IOException;
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "failed to close "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v54, v55

    .line 5228
    .end local v55    # "screenState":Ljava/io/FileReader;
    .restart local v54    # "screenState":Ljava/io/FileReader;
    goto :goto_8

    .line 5220
    .end local v30    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v30

    .line 5221
    .restart local v30    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_9
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "failed to read "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 5223
    if-eqz v54, :cond_46

    .line 5225
    :try_start_a
    invoke-virtual/range {v54 .. v54}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 5226
    :catch_2
    move-exception v30

    .line 5227
    const-string v60, "NfcService"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "failed to close "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 5223
    .end local v30    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v60

    :goto_a
    if-eqz v54, :cond_47

    .line 5225
    :try_start_b
    invoke-virtual/range {v54 .. v54}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 5228
    :cond_47
    :goto_b
    throw v60

    .line 5226
    :catch_3
    move-exception v30

    .line 5227
    .restart local v30    # "e":Ljava/io/IOException;
    const-string v61, "NfcService"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "failed to close "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mScreenStateFile:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 5236
    .end local v30    # "e":Ljava/io/IOException;
    .end local v54    # "screenState":Ljava/io/FileReader;
    :sswitch_1d
    sget-boolean v60, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v60, :cond_48

    const-string v60, "NfcService"

    const-string v61, "DELAY NFC ENABLING AFTER MODEM ON"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/nfc/NfcService;->mBootDelay:I

    move/from16 v60, v0

    if-lez v60, :cond_3

    .line 5238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, v60

    iput v0, v1, Lcom/android/nfc/NfcService;->mBootDelay:I

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v60, v0

    const-wide/16 v62, 0x0

    move-wide/from16 v0, v62

    move-object/from16 v2, v60

    iput-wide v0, v2, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    goto/16 :goto_0

    .line 5223
    .restart local v55    # "screenState":Ljava/io/FileReader;
    :catchall_4
    move-exception v60

    move-object/from16 v54, v55

    .end local v55    # "screenState":Ljava/io/FileReader;
    .restart local v54    # "screenState":Ljava/io/FileReader;
    goto :goto_a

    .line 5220
    .end local v54    # "screenState":Ljava/io/FileReader;
    .restart local v55    # "screenState":Ljava/io/FileReader;
    :catch_4
    move-exception v30

    move-object/from16 v54, v55

    .end local v55    # "screenState":Ljava/io/FileReader;
    .restart local v54    # "screenState":Ljava/io/FileReader;
    goto/16 :goto_9

    .end local v54    # "screenState":Ljava/io/FileReader;
    .restart local v55    # "screenState":Ljava/io/FileReader;
    :cond_49
    move-object/from16 v54, v55

    .end local v55    # "screenState":Ljava/io/FileReader;
    .restart local v54    # "screenState":Ljava/io/FileReader;
    goto/16 :goto_8

    .line 4768
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_e
        0x2 -> :sswitch_f
        0x3 -> :sswitch_6
        0x4 -> :sswitch_10
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_12
        0xa -> :sswitch_13
        0xb -> :sswitch_14
        0xc9 -> :sswitch_8
        0xca -> :sswitch_11
        0xcb -> :sswitch_5
        0xcc -> :sswitch_15
        0xcd -> :sswitch_16
        0xce -> :sswitch_b
        0xcf -> :sswitch_a
        0xd0 -> :sswitch_c
        0xd1 -> :sswitch_17
        0xd2 -> :sswitch_18
        0xd3 -> :sswitch_9
        0xd4 -> :sswitch_3
        0x12d -> :sswitch_19
        0x12e -> :sswitch_1a
        0x12f -> :sswitch_1b
        0x130 -> :sswitch_d
        0x26ad -> :sswitch_1c
        0x26ae -> :sswitch_6
        0x26af -> :sswitch_7
        0x26b0 -> :sswitch_1d
    .end sparse-switch
.end method
