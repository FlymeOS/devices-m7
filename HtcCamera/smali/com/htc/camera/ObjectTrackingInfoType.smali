.class public final enum Lcom/htc/camera/ObjectTrackingInfoType;
.super Ljava/lang/Enum;
.source "ObjectTrackingInfoType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/ObjectTrackingInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/ObjectTrackingInfoType;

.field public static final enum Face:Lcom/htc/camera/ObjectTrackingInfoType;

.field public static final enum FaceOutSideScreen:Lcom/htc/camera/ObjectTrackingInfoType;

.field public static final enum Object:Lcom/htc/camera/ObjectTrackingInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/ObjectTrackingInfoType;

    const-string v1, "Face"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/ObjectTrackingInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    .line 6
    new-instance v0, Lcom/htc/camera/ObjectTrackingInfoType;

    const-string v1, "FaceOutSideScreen"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/ObjectTrackingInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ObjectTrackingInfoType;->FaceOutSideScreen:Lcom/htc/camera/ObjectTrackingInfoType;

    .line 7
    new-instance v0, Lcom/htc/camera/ObjectTrackingInfoType;

    const-string v1, "Object"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/ObjectTrackingInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ObjectTrackingInfoType;->Object:Lcom/htc/camera/ObjectTrackingInfoType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v1, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/ObjectTrackingInfoType;->FaceOutSideScreen:Lcom/htc/camera/ObjectTrackingInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/ObjectTrackingInfoType;->Object:Lcom/htc/camera/ObjectTrackingInfoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/ObjectTrackingInfoType;->$VALUES:[Lcom/htc/camera/ObjectTrackingInfoType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/ObjectTrackingInfoType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/ObjectTrackingInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfoType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/ObjectTrackingInfoType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/ObjectTrackingInfoType;->$VALUES:[Lcom/htc/camera/ObjectTrackingInfoType;

    invoke-virtual {v0}, [Lcom/htc/camera/ObjectTrackingInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/ObjectTrackingInfoType;

    return-object v0
.end method
