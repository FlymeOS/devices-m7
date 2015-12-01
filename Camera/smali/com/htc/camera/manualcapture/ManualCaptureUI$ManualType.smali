.class final enum Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;
.super Ljava/lang/Enum;
.source "ManualCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

.field public static final enum Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

.field public static final enum Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

.field public static final enum ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

.field public static final enum Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

.field public static final enum WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    const-string v1, "Focus"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    .line 76
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    const-string v1, "Shutter"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    .line 77
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    const-string v1, "ISO"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    .line 78
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    const-string v1, "Exposure"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    .line 79
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    const-string v1, "WhiteBalance"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Focus:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Shutter:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->ISO:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->Exposure:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->WhiteBalance:Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->$VALUES:[Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->$VALUES:[Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    invoke-virtual {v0}, [Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/manualcapture/ManualCaptureUI$ManualType;

    return-object v0
.end method
