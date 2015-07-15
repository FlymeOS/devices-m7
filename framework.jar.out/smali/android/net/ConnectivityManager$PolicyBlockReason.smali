.class public final enum Landroid/net/ConnectivityManager$PolicyBlockReason;
.super Ljava/lang/Enum;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyBlockReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/ConnectivityManager$PolicyBlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum DATA_USAGE:Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum DSDS_BLOCK:Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum MEX_FAIL_RETRY:Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum NIGHT_MODE:Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum TSMC_IN_ZONE:Landroid/net/ConnectivityManager$PolicyBlockReason;

.field public static final enum UNKNOW:Landroid/net/ConnectivityManager$PolicyBlockReason;


# instance fields
.field private name:Ljava/lang/String;

.field private needSeparate:Z

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2804
    new-instance v0, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v1, "UNKNOW"

    const/4 v3, -0x1

    const-string v5, ""

    move v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v0, Landroid/net/ConnectivityManager$PolicyBlockReason;->UNKNOW:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2805
    new-instance v3, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v4, "DATA_USAGE"

    const-string v8, "DATA_USAGE"

    move v5, v9

    move v6, v2

    move v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->DATA_USAGE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2806
    new-instance v3, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v4, "NIGHT_MODE"

    const-string v8, "NIGHT_MODE"

    move v5, v10

    move v6, v9

    move v7, v2

    invoke-direct/range {v3 .. v8}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->NIGHT_MODE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2807
    new-instance v3, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v4, "MEX_FAIL_RETRY"

    const-string v8, "MEX_FAIL_RETRY"

    move v5, v11

    move v6, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->MEX_FAIL_RETRY:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2808
    new-instance v3, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v4, "DSDS_BLOCK"

    const-string v8, "DSDS_BLOCK_DATA"

    move v5, v12

    move v6, v11

    move v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->DSDS_BLOCK:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2809
    new-instance v3, Landroid/net/ConnectivityManager$PolicyBlockReason;

    const-string v4, "TSMC_IN_ZONE"

    const/4 v5, 0x5

    const-string v8, "TSMC_IN_ZONE"

    move v6, v12

    move v7, v2

    invoke-direct/range {v3 .. v8}, Landroid/net/ConnectivityManager$PolicyBlockReason;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->TSMC_IN_ZONE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    .line 2803
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/ConnectivityManager$PolicyBlockReason;

    sget-object v1, Landroid/net/ConnectivityManager$PolicyBlockReason;->UNKNOW:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/ConnectivityManager$PolicyBlockReason;->DATA_USAGE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v1, v0, v9

    sget-object v1, Landroid/net/ConnectivityManager$PolicyBlockReason;->NIGHT_MODE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v1, v0, v10

    sget-object v1, Landroid/net/ConnectivityManager$PolicyBlockReason;->MEX_FAIL_RETRY:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v1, v0, v11

    sget-object v1, Landroid/net/ConnectivityManager$PolicyBlockReason;->DSDS_BLOCK:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Landroid/net/ConnectivityManager$PolicyBlockReason;->TSMC_IN_ZONE:Landroid/net/ConnectivityManager$PolicyBlockReason;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/ConnectivityManager$PolicyBlockReason;->$VALUES:[Landroid/net/ConnectivityManager$PolicyBlockReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "needSeparate"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2815
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2816
    iput p3, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->value:I

    .line 2817
    iput-boolean p4, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->needSeparate:Z

    .line 2818
    iput-object p5, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->name:Ljava/lang/String;

    .line 2819
    return-void
.end method

.method public static ReasonfromValue(I)Landroid/net/ConnectivityManager$PolicyBlockReason;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2825
    invoke-static {}, Landroid/net/ConnectivityManager$PolicyBlockReason;->values()[Landroid/net/ConnectivityManager$PolicyBlockReason;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/ConnectivityManager$PolicyBlockReason;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2827
    .local v3, "ts":Landroid/net/ConnectivityManager$PolicyBlockReason;
    iget v4, v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->value:I

    if-ne v4, p0, :cond_0

    .line 2830
    .end local v3    # "ts":Landroid/net/ConnectivityManager$PolicyBlockReason;
    :goto_1
    return-object v3

    .line 2825
    .restart local v3    # "ts":Landroid/net/ConnectivityManager$PolicyBlockReason;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2830
    .end local v3    # "ts":Landroid/net/ConnectivityManager$PolicyBlockReason;
    :cond_1
    sget-object v3, Landroid/net/ConnectivityManager$PolicyBlockReason;->UNKNOW:Landroid/net/ConnectivityManager$PolicyBlockReason;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/ConnectivityManager$PolicyBlockReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2803
    const-class v0, Landroid/net/ConnectivityManager$PolicyBlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$PolicyBlockReason;

    return-object v0
.end method

.method public static values()[Landroid/net/ConnectivityManager$PolicyBlockReason;
    .locals 1

    .prologue
    .line 2803
    sget-object v0, Landroid/net/ConnectivityManager$PolicyBlockReason;->$VALUES:[Landroid/net/ConnectivityManager$PolicyBlockReason;

    invoke-virtual {v0}, [Landroid/net/ConnectivityManager$PolicyBlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/ConnectivityManager$PolicyBlockReason;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 2820
    iget v0, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->value:I

    return v0
.end method

.method public isSlotNeedToSeparated()Z
    .locals 1

    .prologue
    .line 2821
    iget-boolean v0, p0, Landroid/net/ConnectivityManager$PolicyBlockReason;->needSeparate:Z

    return v0
.end method
