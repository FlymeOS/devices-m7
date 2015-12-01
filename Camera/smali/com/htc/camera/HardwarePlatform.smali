.class public final enum Lcom/htc/camera/HardwarePlatform;
.super Ljava/lang/Enum;
.source "HardwarePlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/HardwarePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/HardwarePlatform;

.field public static final enum Broadcom:Lcom/htc/camera/HardwarePlatform;

.field public static final CURRENT:Lcom/htc/camera/HardwarePlatform;

.field public static final enum Nvidia:Lcom/htc/camera/HardwarePlatform;

.field public static final enum Qualcomm:Lcom/htc/camera/HardwarePlatform;

.field public static final enum STEricsson:Lcom/htc/camera/HardwarePlatform;

.field public static final enum Spreadtrum:Lcom/htc/camera/HardwarePlatform;

.field public static final enum VIA:Lcom/htc/camera/HardwarePlatform;


# instance fields
.field private final m_AccValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "Qualcomm"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->Qualcomm:Lcom/htc/camera/HardwarePlatform;

    .line 8
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "Nvidia"

    invoke-direct {v0, v1, v3, v4}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->Nvidia:Lcom/htc/camera/HardwarePlatform;

    .line 9
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "STEricsson"

    invoke-direct {v0, v1, v4, v5}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->STEricsson:Lcom/htc/camera/HardwarePlatform;

    .line 10
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "VIA"

    invoke-direct {v0, v1, v5, v6}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->VIA:Lcom/htc/camera/HardwarePlatform;

    .line 11
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "Spreadtrum"

    invoke-direct {v0, v1, v6, v7}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->Spreadtrum:Lcom/htc/camera/HardwarePlatform;

    .line 12
    new-instance v0, Lcom/htc/camera/HardwarePlatform;

    const-string v1, "Broadcom"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/camera/HardwarePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->Broadcom:Lcom/htc/camera/HardwarePlatform;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/HardwarePlatform;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/camera/HardwarePlatform;->Qualcomm:Lcom/htc/camera/HardwarePlatform;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Nvidia:Lcom/htc/camera/HardwarePlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->STEricsson:Lcom/htc/camera/HardwarePlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->VIA:Lcom/htc/camera/HardwarePlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Spreadtrum:Lcom/htc/camera/HardwarePlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Broadcom:Lcom/htc/camera/HardwarePlatform;

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/camera/HardwarePlatform;->$VALUES:[Lcom/htc/camera/HardwarePlatform;

    .line 32
    const-string v0, "System"

    invoke-static {v0}, Lcom/htc/camera/DisplayDevice;->getCustomizationReader(Ljava/lang/String;)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    move-result-object v0

    .line 33
    const-string v1, "chipset"

    sget-object v2, Lcom/htc/camera/HardwarePlatform;->Qualcomm:Lcom/htc/camera/HardwarePlatform;

    iget v2, v2, Lcom/htc/camera/HardwarePlatform;->m_AccValue:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    .line 36
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->Qualcomm:Lcom/htc/camera/HardwarePlatform;

    .line 37
    invoke-static {}, Lcom/htc/camera/HardwarePlatform;->values()[Lcom/htc/camera/HardwarePlatform;

    move-result-object v3

    .line 38
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 40
    aget-object v4, v3, v1

    iget v4, v4, Lcom/htc/camera/HardwarePlatform;->m_AccValue:I

    if-ne v4, v2, :cond_1

    .line 42
    aget-object v0, v3, v1

    .line 46
    :cond_0
    sput-object v0, Lcom/htc/camera/HardwarePlatform;->CURRENT:Lcom/htc/camera/HardwarePlatform;

    .line 47
    const-string v1, "HardwarePlatform"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current platform is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 38
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/htc/camera/HardwarePlatform;->m_AccValue:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/HardwarePlatform;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/htc/camera/HardwarePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HardwarePlatform;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/HardwarePlatform;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->$VALUES:[Lcom/htc/camera/HardwarePlatform;

    invoke-virtual {v0}, [Lcom/htc/camera/HardwarePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/HardwarePlatform;

    return-object v0
.end method
