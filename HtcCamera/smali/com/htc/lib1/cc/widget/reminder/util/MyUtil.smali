.class public Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field private static sAccessibility:Landroid/view/accessibility/AccessibilityManager;

.field private static sAccessibilityEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibilityEnable:Z

    return-void
.end method

.method public static checkAccessibilityEnable(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->getAccessibilityEnable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibilityEnable:Z

    .line 162
    return-void
.end method

.method public static getAccessibilityEnable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 146
    sget-object v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 147
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    :cond_0
    sget-object v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 152
    sget-object v2, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibility:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 153
    const-string v3, "MyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccessibilityEnable isTouchExploration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0

    :cond_2
    move v0, v1

    .line 157
    goto :goto_0
.end method

.method public static getResourceFormResApp(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 114
    if-eqz p0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    const-string v2, "MyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourceFormApp e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getStatusbarHeight(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    .line 60
    if-eqz p0, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->getID(Landroid/content/res/Resources;II)I

    move-result v2

    .line 64
    if-lez v2, :cond_0

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 67
    :cond_0
    const-string v1, "MyUtil"

    const-string v2, "getSBHeight id<=0"

    invoke-static {v1, v2}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v1, "MyUtil"

    const-string v2, "getSBHeight fail: res"

    invoke-static {v1, v2}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v1, "MyUtil"

    const-string v2, "getSBHeight fail: context"

    invoke-static {v1, v2}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isAccessibilityEnable()Z
    .locals 1

    .prologue
    .line 165
    sget-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->sAccessibilityEnable:Z

    return v0
.end method

.method public static isInAllCapsLocale(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 81
    :try_start_0
    const-string v0, "com.htc.util.res.HtcResUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 83
    const-string v3, "isInAllCapsLocale"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static removeMessage(Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
