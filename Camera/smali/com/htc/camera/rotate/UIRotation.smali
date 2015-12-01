.class public final enum Lcom/htc/camera/rotate/UIRotation;
.super Ljava/lang/Enum;
.source "UIRotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/rotate/UIRotation;

.field public static final enum InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

.field public static final enum InversePortrait:Lcom/htc/camera/rotate/UIRotation;

.field public static final enum Landscape:Lcom/htc/camera/rotate/UIRotation;

.field public static final enum Portrait:Lcom/htc/camera/rotate/UIRotation;

.field public static final SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;


# instance fields
.field public final deviceOrientation:I

.field public final surfaceRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 10
    new-instance v5, Lcom/htc/camera/rotate/UIRotation;

    const-string v6, "Portrait"

    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v5, v6, v1, v0}, Lcom/htc/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    .line 11
    new-instance v5, Lcom/htc/camera/rotate/UIRotation;

    const-string v6, "Landscape"

    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {v5, v6, v3, v0}, Lcom/htc/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    .line 12
    new-instance v5, Lcom/htc/camera/rotate/UIRotation;

    const-string v6, "InversePortrait"

    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_2
    invoke-direct {v5, v6, v4, v0}, Lcom/htc/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    .line 13
    new-instance v5, Lcom/htc/camera/rotate/UIRotation;

    const-string v6, "InverseLandscape"

    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    invoke-direct {v5, v6, v2, v0}, Lcom/htc/camera/rotate/UIRotation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/rotate/UIRotation;

    sget-object v5, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    aput-object v5, v0, v1

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/camera/rotate/UIRotation;->$VALUES:[Lcom/htc/camera/rotate/UIRotation;

    .line 34
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    sput-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    .line 38
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 10
    goto :goto_0

    :cond_1
    move v0, v1

    .line 11
    goto :goto_1

    :cond_2
    move v0, v3

    .line 12
    goto :goto_2

    :cond_3
    move v0, v4

    .line 13
    goto :goto_3

    .line 37
    :cond_4
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    sput-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_4
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    .line 46
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x5a

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static boundIn360(I)I
    .locals 1

    .prologue
    .line 54
    if-ltz p0, :cond_0

    .line 55
    rem-int/lit16 v0, p0, 0x168

    .line 56
    :goto_0
    return v0

    :cond_0
    rem-int/lit16 v0, p0, 0x168

    add-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method public static fromDeviceOrientation(I)Lcom/htc/camera/rotate/UIRotation;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method public static fromDeviceOrientation(Lcom/htc/camera/rotate/UIRotation;I)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method public static fromDeviceOrientation(Lcom/htc/camera/rotate/UIRotation;IZ)Lcom/htc/camera/rotate/UIRotation;
    .locals 8

    .prologue
    .line 73
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 75
    const-string v0, "UIRotation"

    const-string v1, "Ubdefined orientation in fromDeviceOrientation()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    .line 127
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/htc/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v3

    .line 81
    if-eqz p0, :cond_3

    .line 83
    iget v0, p0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v0, v0, 0x46

    invoke-static {v0}, Lcom/htc/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v0

    .line 84
    iget v1, p0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v1}, Lcom/htc/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v1

    .line 85
    if-lt v0, v1, :cond_1

    .line 87
    if-lt v3, v1, :cond_3

    if-gt v3, v0, :cond_3

    move-object v0, p0

    .line 88
    goto :goto_0

    .line 92
    :cond_1
    if-le v3, v0, :cond_2

    if-lt v3, v1, :cond_3

    :cond_2
    move-object v0, p0

    .line 93
    goto :goto_0

    .line 98
    :cond_3
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    .line 99
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->values()[Lcom/htc/camera/rotate/UIRotation;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_9

    aget-object v0, v4, v2

    .line 101
    iget v6, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v6, v6, 0x2d

    invoke-static {v6}, Lcom/htc/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v6

    .line 102
    iget v7, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v7, -0x2d

    invoke-static {v7}, Lcom/htc/camera/rotate/UIRotation;->boundIn360(I)I

    move-result v7

    .line 103
    if-lt v6, v7, :cond_5

    .line 105
    if-lt v3, v7, :cond_6

    if-gt v3, v6, :cond_6

    .line 120
    :cond_4
    :goto_2
    sget-object v1, Lcom/htc/camera/rotate/UIRotation$1;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    if-eqz p2, :cond_7

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 113
    :cond_5
    if-le v3, v6, :cond_4

    if-ge v3, v7, :cond_4

    .line 99
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 123
    :cond_7
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 125
    :pswitch_1
    if-eqz p2, :cond_8

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_2

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLandscapeMode()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->$VALUES:[Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, [Lcom/htc/camera/rotate/UIRotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/rotate/UIRotation;

    return-object v0
.end method


# virtual methods
.method public getSurfaceDegrees()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
