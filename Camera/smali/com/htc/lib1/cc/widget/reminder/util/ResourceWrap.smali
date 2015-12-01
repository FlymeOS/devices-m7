.class public Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;
.super Ljava/lang/Object;
.source "ResourceWrap.java"


# static fields
.field private static ID_NAVIGATION_BAR_HEIGHT:I

.field private static ID_STATUS_BAR_HEIGHT:I

.field private static S_INIT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_STATUS_BAR_HEIGHT:I

    .line 19
    sput v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_NAVIGATION_BAR_HEIGHT:I

    .line 21
    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->S_INIT:Z

    return-void
.end method

.method public static getID(Landroid/content/res/Resources;II)I
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->S_INIT:Z

    if-nez v0, :cond_0

    .line 25
    invoke-static {p0}, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->init(Landroid/content/res/Resources;)V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->S_INIT:Z

    .line 29
    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, p2

    .line 40
    :goto_0
    if-gtz v0, :cond_1

    .line 43
    :goto_1
    return p2

    .line 31
    :pswitch_0
    sget v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_STATUS_BAR_HEIGHT:I

    goto :goto_0

    .line 34
    :pswitch_1
    sget v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_NAVIGATION_BAR_HEIGHT:I

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static init(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 48
    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_STATUS_BAR_HEIGHT:I

    .line 49
    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/reminder/util/ResourceWrap;->ID_NAVIGATION_BAR_HEIGHT:I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "ResWrap"

    const-string v1, "init: res NULL."

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
