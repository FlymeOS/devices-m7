.class public final enum Lcom/htc/camera/property/PropertyBindingMode;
.super Ljava/lang/Enum;
.source "PropertyBindingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/property/PropertyBindingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/property/PropertyBindingMode;

.field public static final enum OneWay:Lcom/htc/camera/property/PropertyBindingMode;

.field public static final enum OneWayToSource:Lcom/htc/camera/property/PropertyBindingMode;

.field public static final enum TwoWay:Lcom/htc/camera/property/PropertyBindingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/property/PropertyBindingMode;

    const-string v1, "OneWay"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/property/PropertyBindingMode;->OneWay:Lcom/htc/camera/property/PropertyBindingMode;

    .line 6
    new-instance v0, Lcom/htc/camera/property/PropertyBindingMode;

    const-string v1, "OneWayToSource"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/property/PropertyBindingMode;->OneWayToSource:Lcom/htc/camera/property/PropertyBindingMode;

    .line 7
    new-instance v0, Lcom/htc/camera/property/PropertyBindingMode;

    const-string v1, "TwoWay"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/property/PropertyBindingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/property/PropertyBindingMode;->TwoWay:Lcom/htc/camera/property/PropertyBindingMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/property/PropertyBindingMode;

    sget-object v1, Lcom/htc/camera/property/PropertyBindingMode;->OneWay:Lcom/htc/camera/property/PropertyBindingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/property/PropertyBindingMode;->OneWayToSource:Lcom/htc/camera/property/PropertyBindingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/property/PropertyBindingMode;->TwoWay:Lcom/htc/camera/property/PropertyBindingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/property/PropertyBindingMode;->$VALUES:[Lcom/htc/camera/property/PropertyBindingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/property/PropertyBindingMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/property/PropertyBindingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/property/PropertyBindingMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/property/PropertyBindingMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/property/PropertyBindingMode;->$VALUES:[Lcom/htc/camera/property/PropertyBindingMode;

    invoke-virtual {v0}, [Lcom/htc/camera/property/PropertyBindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/property/PropertyBindingMode;

    return-object v0
.end method
