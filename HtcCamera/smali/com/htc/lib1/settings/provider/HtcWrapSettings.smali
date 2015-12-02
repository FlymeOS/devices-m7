.class public final Lcom/htc/lib1/settings/provider/HtcWrapSettings;
.super Ljava/lang/Object;
.source "HtcWrapSettings.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1211
    const-string v0, "HtcWrapSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/htc/lib1/settings/provider/HtcWrapSettings;->combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static combineStringArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    .line 49
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v0
.end method
