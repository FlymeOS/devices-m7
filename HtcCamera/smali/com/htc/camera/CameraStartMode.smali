.class public final enum Lcom/htc/camera/CameraStartMode;
.super Ljava/lang/Enum;
.source "CameraStartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraStartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraStartMode;

.field public static final enum Album:Lcom/htc/camera/CameraStartMode;

.field public static final enum ContactsPhoto:Lcom/htc/camera/CameraStartMode;

.field public static final enum Generic:Lcom/htc/camera/CameraStartMode;

.field public static final enum GenericService:Lcom/htc/camera/CameraStartMode;

.field public static final enum GenericServiceCamcorder:Lcom/htc/camera/CameraStartMode;

.field public static final enum GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

.field public static final enum MmsPhoto:Lcom/htc/camera/CameraStartMode;

.field public static final enum MmsVideo:Lcom/htc/camera/CameraStartMode;

.field public static final enum NotesPhoto:Lcom/htc/camera/CameraStartMode;

.field public static final enum NotesVideo:Lcom/htc/camera/CameraStartMode;

.field public static final enum SquarePhoto:Lcom/htc/camera/CameraStartMode;

.field public static final enum WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

.field public static final enum WatchCompanionVideo:Lcom/htc/camera/CameraStartMode;


# instance fields
.field public final isServiceMode:Z

.field public final supportsPhotoMode:Z

.field public final supportsVideoMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v7, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 5
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "Generic"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->Generic:Lcom/htc/camera/CameraStartMode;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "GenericService"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->GenericService:Lcom/htc/camera/CameraStartMode;

    .line 7
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "GenericServiceCamera"

    invoke-direct {v0, v1, v11, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    .line 8
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "GenericServiceCamcorder"

    invoke-direct {v0, v1, v12, v2, v4}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/htc/camera/CameraStartMode;

    .line 9
    new-instance v5, Lcom/htc/camera/CameraStartMode;

    const-string v6, "Album"

    move v8, v2

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/htc/camera/CameraStartMode;->Album:Lcom/htc/camera/CameraStartMode;

    .line 10
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "ContactsPhoto"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    .line 11
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "SquarePhoto"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    .line 12
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "MmsPhoto"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->MmsPhoto:Lcom/htc/camera/CameraStartMode;

    .line 13
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "MmsVideo"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    .line 14
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "NotesPhoto"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->NotesPhoto:Lcom/htc/camera/CameraStartMode;

    .line 15
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "NotesVideo"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->NotesVideo:Lcom/htc/camera/CameraStartMode;

    .line 16
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "WatchCompanionPhoto"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

    .line 17
    new-instance v0, Lcom/htc/camera/CameraStartMode;

    const-string v1, "WatchCompanionVideo"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/htc/camera/CameraStartMode;->WatchCompanionVideo:Lcom/htc/camera/CameraStartMode;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/htc/camera/CameraStartMode;

    sget-object v1, Lcom/htc/camera/CameraStartMode;->Generic:Lcom/htc/camera/CameraStartMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericService:Lcom/htc/camera/CameraStartMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamera:Lcom/htc/camera/CameraStartMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/htc/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/htc/camera/CameraStartMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/htc/camera/CameraStartMode;->Album:Lcom/htc/camera/CameraStartMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/CameraStartMode;->ContactsPhoto:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/CameraStartMode;->SquarePhoto:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/CameraStartMode;->MmsPhoto:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/CameraStartMode;->NotesPhoto:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/camera/CameraStartMode;->NotesVideo:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/camera/CameraStartMode;->WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/camera/CameraStartMode;->WatchCompanionVideo:Lcom/htc/camera/CameraStartMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/CameraStartMode;->$VALUES:[Lcom/htc/camera/CameraStartMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean p3, p0, Lcom/htc/camera/CameraStartMode;->isServiceMode:Z

    .line 37
    iput-boolean p4, p0, Lcom/htc/camera/CameraStartMode;->supportsPhotoMode:Z

    .line 38
    iput-boolean p5, p0, Lcom/htc/camera/CameraStartMode;->supportsVideoMode:Z

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraStartMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraStartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraStartMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraStartMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraStartMode;->$VALUES:[Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraStartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraStartMode;

    return-object v0
.end method
