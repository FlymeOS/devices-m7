.class public final enum Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;
.super Ljava/lang/Enum;
.source "ICaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

.field public static final enum Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

.field public static final enum Photo:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

.field public static final enum Video:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    const-string v1, "Dual"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 34
    new-instance v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    const-string v1, "Photo"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 36
    new-instance v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    const-string v1, "Video"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Video:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Dual:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Photo:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->Video:Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->$VALUES:[Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->$VALUES:[Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    invoke-virtual {v0}, [Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/ICaptureBar$CaptureButtonStyle;

    return-object v0
.end method
