.class final enum Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
.super Ljava/lang/Enum;
.source "GLViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field public static final enum FadingIn:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field public static final enum FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field public static final enum None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

.field public static final enum Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 140
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 141
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    const-string v1, "FadingIn"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingIn:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 142
    new-instance v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    const-string v1, "FadingOut"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->None:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->Waiting:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingIn:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->FadingOut:Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->$VALUES:[Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->$VALUES:[Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    invoke-virtual {v0}, [Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/viewfinder/GLViewFinder$AnimationState;

    return-object v0
.end method
