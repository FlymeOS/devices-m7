.class public Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;
.super Landroid/content/BroadcastReceiver;
.source "CoworkInterfaceListener.java"


# static fields
.field public static final BUNDLE_COMMAND:Ljava/lang/String; = "Command"

.field private static final EXPECTED_PACKAGE_NAME:Ljava/lang/String; = "com.htc.autotest.gsr.service"

.field public static final INTENT_CIBUNDLE:Ljava/lang/String; = "com.htc.autotest.command.worker.CIBundle"

.field public static final SP_CLASS:Ljava/lang/String; = "android.os.SystemProperties"

.field public static final SP_METHOD:Ljava/lang/String; = "get"

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field private static final TAG:Ljava/lang/String; = "CoworkInterfaceListener"

.field private static final mIntentFilterActionName:Ljava/lang/String; = "AUTO_TEST_ENABLE"

.field private static final mPermission:Ljava/lang/String; = "com.htc.autotest.coworkinterface.TEST"


# instance fields
.field private mCommandBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;

.field private final mIntentFilterAction:Ljava/lang/String;

.field private mIsRegistered:Z

.field private mIsSystemTestable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsRegistered:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsSystemTestable:Z

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mCommandBlackList:Ljava/util/List;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 43
    iput-object p1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mContext:Landroid/content/Context;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "AUTO_TEST_ENABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIntentFilterAction:Ljava/lang/String;

    .line 46
    new-instance v2, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;

    invoke-direct {v2, p0}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;-><init>(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)V

    iput-object v2, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIntentFilter:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;

    .line 48
    invoke-direct {p0}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->isTestableROM()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->isSignatureMatch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->isSRPatchExist()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsSystemTestable:Z

    .line 50
    const-string v0, "CoworkInterfaceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSRPatchExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->isSRPatchExist()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "CoworkInterfaceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enable CIListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsSystemTestable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mCommandBlackList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIntentFilterAction:Ljava/lang/String;

    return-object v0
.end method

.method private static isSRPatchExist()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    :try_start_0
    const-string v1, "android.view.ATViewRoot"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSignatureMatch(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 207
    const-string v0, "CoworkInterfaceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.autotest.gsr.service"

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 211
    const-string v0, "CoworkInterfaceListener"

    const-string v1, "isSignatureMatch: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTestableROM()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    .line 158
    const-string v0, "android.os.SystemProperties"

    const-string v1, "get"

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 160
    if-nez v5, :cond_0

    .line 190
    :goto_0
    return v4

    .line 165
    :cond_0
    const-string v2, "1"

    .line 166
    const-string v1, "0"

    .line 171
    const/4 v0, 0x0

    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.secure"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "1"

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 173
    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.debuggable"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "0"

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 177
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v2

    .line 184
    :goto_2
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 186
    :goto_3
    const-string v3, "CoworkInterfaceListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsSecure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "CoworkInterfaceListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsDuggable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "CoworkInterfaceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTestable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 190
    goto/16 :goto_0

    .line 179
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v9

    .line 181
    const-string v5, "CoworkInterfaceListener"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :cond_2
    move v2, v4

    .line 184
    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private loadMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 120
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 127
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 128
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v6

    invoke-virtual {v5, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 130
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    :goto_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const-string v1, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_1
    return-object v0

    :cond_0
    move v2, v3

    .line 130
    goto :goto_0

    .line 147
    :cond_1
    const-string v0, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 149
    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 134
    :goto_2
    :try_start_2
    const-string v3, "CoworkInterfaceListener"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const-string v1, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    :cond_2
    const-string v0, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 149
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    const-string v1, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_3
    throw v0

    :cond_3
    const-string v1, "CoworkInterfaceListener"

    const-string v2, "loadMethod() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 132
    :catch_1
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public addToBlackList(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mCommandBlackList:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v0, "CoworkInterfaceListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add a command to the black list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public destory()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->stop()V

    .line 57
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "CoworkInterfaceListener"

    const-string v1, "Receiver active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$1;-><init>(Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsSystemTestable:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsRegistered:Z

    .line 67
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIntentFilter:Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener$CoworkInterfaceIntentFilter;

    const-string v2, "com.htc.autotest.coworkinterface.TEST"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 69
    const-string v0, "CoworkInterfaceListener"

    const-string v1, "Receiver is registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mIsRegistered:Z

    .line 81
    iget-object v0, p0, Lcom/htc/lib1/autotest/middleware/CoworkInterfaceListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const-string v0, "CoworkInterfaceListener"

    const-string v1, "Receiver is unregistered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method
