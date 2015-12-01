.class public final enum Lcom/htc/camera/ObjectTrackingMode;
.super Ljava/lang/Enum;
.source "ObjectTrackingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/ObjectTrackingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/ObjectTrackingMode;

.field public static final enum Face:Lcom/htc/camera/ObjectTrackingMode;

.field public static final enum Object:Lcom/htc/camera/ObjectTrackingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/ObjectTrackingMode;

    const-string v1, "Object"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/ObjectTrackingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ObjectTrackingMode;->Object:Lcom/htc/camera/ObjectTrackingMode;

    .line 6
    new-instance v0, Lcom/htc/camera/ObjectTrackingMode;

    const-string v1, "Face"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/ObjectTrackingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ObjectTrackingMode;->Face:Lcom/htc/camera/ObjectTrackingMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/ObjectTrackingMode;

    sget-object v1, Lcom/htc/camera/ObjectTrackingMode;->Object:Lcom/htc/camera/ObjectTrackingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/ObjectTrackingMode;->Face:Lcom/htc/camera/ObjectTrackingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/camera/ObjectTrackingMode;->$VALUES:[Lcom/htc/camera/ObjectTrackingMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/ObjectTrackingMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/ObjectTrackingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/ObjectTrackingMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/ObjectTrackingMode;->$VALUES:[Lcom/htc/camera/ObjectTrackingMode;

    invoke-virtual {v0}, [Lcom/htc/camera/ObjectTrackingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/ObjectTrackingMode;

    return-object v0
.end method
