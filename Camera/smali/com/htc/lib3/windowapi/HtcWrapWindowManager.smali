.class public Lcom/htc/lib3/windowapi/HtcWrapWindowManager;
.super Ljava/lang/Object;
.source "HtcWrapWindowManager.java"


# static fields
.field public static final CUSTOM_FLAG_FORBID_IMMERSIVE_CONFIRMATION:I

.field public static final CUSTOM_FLAG_FORBID_TRANSIENT_NAVIGATION_BAR:I

.field public static final CUSTOM_FLAG_FORBID_TRANSIENT_STATUS_BAR:I

.field public static final CUSTOM_FLAG_NO_SCREEN_ROTATION_ANIMATION:I

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_APPLICATION_MEDIA_OVERLAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const-class v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    .line 22
    :try_start_0
    const-string v1, "com.htc.wrap.android.view.HtcWrapWindowManager$LayoutParams"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 23
    const-string v2, "TYPE_APPLICATION_MEDIA_OVERLAY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 27
    :goto_0
    sput v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TYPE_APPLICATION_MEDIA_OVERLAY:I

    .line 38
    const-string v0, "CUSTOM_FLAG_FORBID_IMMERSIVE_CONFIRMATION"

    invoke-static {v0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->getReflectedFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_IMMERSIVE_CONFIRMATION:I

    .line 43
    const-string v0, "CUSTOM_FLAG_FORBID_TRANSIENT_STATUS_BAR"

    invoke-static {v0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->getReflectedFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_TRANSIENT_STATUS_BAR:I

    .line 49
    const-string v0, "CUSTOM_FLAG_FORBID_TRANSIENT_NAVIGATION_BAR"

    invoke-static {v0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->getReflectedFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_FORBID_TRANSIENT_NAVIGATION_BAR:I

    .line 54
    const-string v0, "CUSTOM_FLAG_NO_SCREEN_ROTATION_ANIMATION"

    invoke-static {v0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->getReflectedFlag(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->CUSTOM_FLAG_NO_SCREEN_ROTATION_ANIMATION:I

    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    sget-object v2, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .prologue
    .line 77
    invoke-static {p0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->getCustomFlags(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->setCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 78
    return-void
.end method

.method public static getCustomFlags(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    .prologue
    .line 100
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "customFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getReflectedFlag(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 58
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 63
    :catch_2
    move-exception v0

    .line 64
    sget-object v0, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    const-string v1, "Not support custom flags"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setCustomFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .prologue
    .line 118
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "customFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    sget-object v1, Lcom/htc/lib3/windowapi/HtcWrapWindowManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
