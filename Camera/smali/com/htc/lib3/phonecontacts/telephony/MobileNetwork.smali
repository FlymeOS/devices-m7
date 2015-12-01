.class public Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;
.super Ljava/lang/Object;
.source "MobileNetwork.java"


# direct methods
.method static synthetic a(Ljava/lang/Boolean;)C
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->b(Ljava/lang/Boolean;)C

    move-result v0

    return v0
.end method

.method static synthetic a(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->b(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/htc/lib3/phonecontacts/telephony/MobileNetwork;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Boolean;)C
    .locals 1

    .prologue
    .line 3657
    const/16 v0, 0x2d

    .line 3658
    if-eqz p0, :cond_0

    .line 3659
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x31

    .line 3661
    :cond_0
    :goto_0
    return v0

    .line 3659
    :cond_1
    const/16 v0, 0x30

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 3672
    const/4 v0, 0x0

    .line 3673
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    .line 3674
    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3676
    :cond_0
    return-object v0

    .line 3674
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3643
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3644
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3645
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3646
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
