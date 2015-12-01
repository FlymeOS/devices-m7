.class Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;
.super Ljava/lang/Object;
.source "CameraPopupContainer.java"


# instance fields
.field private anchorOffset:I

.field private bAbove:Z

.field private mAnchorLocation:[I

.field private mContainerLocation:[I

.field final synthetic this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

.field private x:I

.field private xoff:I

.field private y:I

.field private yoff:I


# direct methods
.method constructor <init>(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 321
    iput-object p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->this$0:Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-array v0, v1, [I

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I

    .line 323
    new-array v0, v1, [I

    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z

    .line 325
    return-void
.end method

.method static synthetic access$200(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I

    return v0
.end method

.method static synthetic access$202(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->x:I

    return p1
.end method

.method static synthetic access$300(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->xoff:I

    return v0
.end method

.method static synthetic access$302(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->xoff:I

    return p1
.end method

.method static synthetic access$400(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->y:I

    return v0
.end method

.method static synthetic access$402(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->y:I

    return p1
.end method

.method static synthetic access$500(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->yoff:I

    return v0
.end method

.method static synthetic access$502(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->yoff:I

    return p1
.end method

.method static synthetic access$600(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->anchorOffset:I

    return v0
.end method

.method static synthetic access$602(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;I)I
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->anchorOffset:I

    return p1
.end method

.method static synthetic access$700(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I

    return-object v0
.end method

.method static synthetic access$800(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)[I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I

    return-object v0
.end method

.method static synthetic access$900(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;)Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z

    return v0
.end method

.method static synthetic access$902(Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;Z)Z
    .locals 0

    .prologue
    .line 311
    iput-boolean p1, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->bAbove:Z

    return p1
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 335
    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mAnchorLocation:[I

    .line 336
    iput-object v0, p0, Ldev/htc/camerapopupcontainerlibrary/widget/CameraPopupContainer$MoveInfo;->mContainerLocation:[I

    .line 337
    return-void
.end method
