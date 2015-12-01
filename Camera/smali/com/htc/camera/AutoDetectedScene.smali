.class public final enum Lcom/htc/camera/AutoDetectedScene;
.super Ljava/lang/Enum;
.source "AutoDetectedScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/AutoDetectedScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Backlight:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Beauty:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum FiveShots:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Group:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Hdr:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Landscape:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Lowlight:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum LowlightPortrait:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Macro:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum None:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Normal:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Portrait:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum PortraitBacklight:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Snowscape:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Text:Lcom/htc/camera/AutoDetectedScene;

.field public static final enum Wdr:Lcom/htc/camera/AutoDetectedScene;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    .line 6
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "FiveShots"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->FiveShots:Lcom/htc/camera/AutoDetectedScene;

    .line 7
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Hdr"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Hdr:Lcom/htc/camera/AutoDetectedScene;

    .line 8
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Group"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Group:Lcom/htc/camera/AutoDetectedScene;

    .line 9
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "ContinuousBurst"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    .line 10
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Wdr"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Wdr:Lcom/htc/camera/AutoDetectedScene;

    .line 11
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Beauty"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Beauty:Lcom/htc/camera/AutoDetectedScene;

    .line 12
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Normal"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    .line 13
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Landscape"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Landscape:Lcom/htc/camera/AutoDetectedScene;

    .line 14
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Macro"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Macro:Lcom/htc/camera/AutoDetectedScene;

    .line 15
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Snowscape"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Snowscape:Lcom/htc/camera/AutoDetectedScene;

    .line 16
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Lowlight"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Lowlight:Lcom/htc/camera/AutoDetectedScene;

    .line 17
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Backlight"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Backlight:Lcom/htc/camera/AutoDetectedScene;

    .line 18
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Portrait"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Portrait:Lcom/htc/camera/AutoDetectedScene;

    .line 19
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "LowlightPortrait"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->LowlightPortrait:Lcom/htc/camera/AutoDetectedScene;

    .line 20
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "PortraitBacklight"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->PortraitBacklight:Lcom/htc/camera/AutoDetectedScene;

    .line 21
    new-instance v0, Lcom/htc/camera/AutoDetectedScene;

    const-string v1, "Text"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoDetectedScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->Text:Lcom/htc/camera/AutoDetectedScene;

    .line 3
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/htc/camera/AutoDetectedScene;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->FiveShots:Lcom/htc/camera/AutoDetectedScene;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->Hdr:Lcom/htc/camera/AutoDetectedScene;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->Group:Lcom/htc/camera/AutoDetectedScene;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Wdr:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Beauty:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Landscape:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Macro:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Snowscape:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Lowlight:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Backlight:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Portrait:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->LowlightPortrait:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->PortraitBacklight:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Text:Lcom/htc/camera/AutoDetectedScene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/AutoDetectedScene;->$VALUES:[Lcom/htc/camera/AutoDetectedScene;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/AutoDetectedScene;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/AutoDetectedScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoDetectedScene;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/AutoDetectedScene;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/AutoDetectedScene;->$VALUES:[Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0}, [Lcom/htc/camera/AutoDetectedScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/AutoDetectedScene;

    return-object v0
.end method
