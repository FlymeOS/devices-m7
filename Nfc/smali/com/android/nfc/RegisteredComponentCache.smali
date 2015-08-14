.class public Lcom/android/nfc/RegisteredComponentCache;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RegisteredComponentCache"


# instance fields
.field final mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMetaDataName:Ljava/lang/String;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    .line 58
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 63
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/RegisteredComponentCache$1;-><init>(Lcom/android/nfc/RegisteredComponentCache;)V

    .line 69
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v12, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v9, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 126
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 142
    .local v0, "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    const-string v2, "RegisteredComponentCache"

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v0    # "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "RegisteredComponentCache"

    const-string v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->close()V

    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void
.end method

.method generateComponentsList()V
    .locals 10

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct {v1, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 150
    .local v1, "currentUser":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v8, "android"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 156
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 159
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 161
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "RegisteredComponentCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "RegisteredComponentCache"

    const-string v8, "Could not create user package context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void

    .line 164
    .restart local v0    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .restart local v1    # "currentUser":Landroid/os/UserHandle;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "RegisteredComponentCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    monitor-enter p0

    .line 174
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    .line 175
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 184
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 185
    if-nez v3, :cond_1

    .line 186
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :catch_0
    move-exception v7

    .line 192
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v0

    .line 189
    :cond_1
    :try_start_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/RegisteredComponentCache;->parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 196
    :cond_2
    return-void
.end method

.method parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v6, 0x2

    .line 201
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 202
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v6, :cond_0

    .line 203
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 210
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "tagName":Ljava/lang/String;
    if-ne v0, v6, :cond_3

    const-string v5, "tech"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_2
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 223
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 224
    return-void

    .line 213
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    const-string v5, "tech-list"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 215
    .local v2, "size":I
    if-lez v2, :cond_2

    .line 216
    new-array v4, v2, [Ljava/lang/String;

    .line 217
    .local v4, "techs":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "techs":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 218
    .restart local v4    # "techs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 219
    new-instance v5, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    invoke-direct {v5, p4, v4}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;-><init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
