.class public Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;
.super Ljava/lang/Object;
.source "TabBarUtils.java"


# static fields
.field private static begin:Ljava/lang/reflect/Method;

.field private static end:Ljava/lang/reflect/Method;

.field private static notSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 294
    sput-boolean v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->notSupport:Z

    .line 300
    :try_start_0
    const-class v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.os.Trace"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 301
    const-string v3, "traceBegin"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->begin:Ljava/lang/reflect/Method;

    .line 302
    const-string v3, "traceEnd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->end:Ljava/lang/reflect/Method;

    .line 303
    const-string v2, "TabBar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->notSupport:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 303
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "TabBar"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 310
    sget-boolean v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->notSupport:Z

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 315
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->begin:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v1, "TabBar"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static end()V
    .locals 6

    .prologue
    .line 321
    sget-boolean v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->notSupport:Z

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->end:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v1, "TabBar"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static label(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 332
    sget-boolean v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->notSupport:Z

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->begin:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$trace;->end:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v1, "TabBar"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
